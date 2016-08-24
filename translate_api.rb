require 'open-uri'
require 'JSON'
require_relative 'tokens'


def check_langage(text)
  #define the initial langage you want to translate
  url_lang = "https://translate.yandex.net/api/v1.5/tr.json/detect?key=#{YANDEX_TOKEN}&text=#{text}"
  data_lang = open(url_lang).read
  data_lang_cleaned = JSON.parse(data_lang)

  return data_lang_cleaned['lang']

end

def destination_langage(text)
  #puts "REQUETE"
  origin_lang = origin_lang = check_langage(text)
  #by default you want to translate in english. If already in english then translate in French

  destination_lang = 'en'
  if origin_lang == 'en'
    destination_lang = 'fr'
  end

  return destination_lang

end

def translated_text(text, dest)

  origin_lang = check_langage(text)
  destination_lang = dest

  url_translate = "https://translate.yandex.net/api/v1.5/tr.json/translate?key=#{YANDEX_TOKEN}&lang=#{origin_lang}-#{destination_lang}&text=#{text}"
  data_translate = open(url_translate).read
  data_translate_cleaned = JSON.parse(data_translate)
  #puts data_translate_cleaned['text'].class
  return data_translate_cleaned['text'][0].to_s

end

def final_lang(abbr)
    if abbr == 'en'
      return 'english'
  elsif abbr == 'fr'
      return 'french'
  else
      return abbr
  end
end

def describe(text)
  dest = destination_langage(text)
  final_langage = final_lang(dest)
  translation = translated_text(text, dest)
  puts "#{text} means #{translation} in #{final_langage}"
end

describe('bonjour')
describe('hello')
describe('pied de table')

#text = 'ola'
#puts translate_text(text)

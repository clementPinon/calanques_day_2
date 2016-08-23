require 'open-uri'
require 'JSON'
require_relative 'tokens'

#url = "https://graph.facebook.com/v2.7/me?fields=id,name,birthday,bio,currency,education,devices,email,gender,hometown,picture&access_token=EAACEdEose0cBACnkMl1zxfZC5aZAC5FGSinQZADDb8kzzaWYKepC8PwuebED9UGjFLnCMC47u0qUf8sV9MCcCdwm2s1zFOMgaCJQJEZAfhcaBLHhGRze8i6MOSjQQs0tSZA42XsHnMTrhZCWrkyAxQA8vkKP6sSqzPYwwPq3yj4AZDZD"
#10153444670752573
#500991734


who = "10153444670752573"
url = "https://graph.facebook.com/v2.7/#{who}?fields=id,name,birthday,bio,currency,education,devices,email,gender,hometown,picture&access_token=#{TOKEN}"

data = open(url).read
data_cleaned = JSON.parse(data)

# puts data_cleaned
# puts ""
# puts data_cleaned.class
# puts ""
# puts data_cleaned["name"]
# puts data_cleaned["id"]

def user_info(id_fb)
  who = id_fb
  url = "https://graph.facebook.com/v2.7/#{who}?fields=id,name,birthday,bio,currency,education,devices,email,gender,hometown,picture&access_token=#{TOKEN}"

  data = open(url).read
  data_cleaned = JSON.parse(data)

  return "The requested name is: #{data_cleaned['name']}"

end

puts user_info("10153444670752573")

require 'open-uri'
require 'JSON'
require_relative 'tokens'

#url = "https://graph.facebook.com/v2.7/me?fields=id,name,birthday,bio,currency,education,devices,email,gender,hometown,picture&access_token=EAACEdEose0cBACnkMl1zxfZC5aZAC5FGSinQZADDb8kzzaWYKepC8PwuebED9UGjFLnCMC47u0qUf8sV9MCcCdwm2s1zFOMgaCJQJEZAfhcaBLHhGRze8i6MOSjQQs0tSZA42XsHnMTrhZCWrkyAxQA8vkKP6sSqzPYwwPq3yj4AZDZD"
#10153444670752573
#500991734


# who = "10153444670752573"
# url = "https://graph.facebook.com/v2.7/#{who}?fields=id,name,birthday,bio,currency,education,devices,email,gender,hometown,picture&access_token=#{FB_TOKEN}"

# data = open(url).read
# data_cleaned = JSON.parse(data)

# puts data_cleaned
# puts ""
# puts data_cleaned.class
# puts ""
# puts data_cleaned["name"]
# puts data_cleaned["id"]
class FacebookApi

  attr_reader :data, :name, :birthday

  def initialize(facebook_id)
      url = "https://graph.facebook.com/v2.7/#{facebook_id}?fields=id,name,birthday,bio,currency,education,devices,email,gender,hometown,picture&access_token=#{FB_TOKEN}"
      @data = JSON.parse(open(url).read)
  end

  def name
    @name = @data['name']
  end

  def birthday
    @birthday = @data['birthday']
  end

end



# puts "The requested name is: #{user_name("500991734")}"
# puts "He is born on #{user_birthday("500991734")}"

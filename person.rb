#require_relative "facebook_api"
require_relative "facebook_api_bis"

class Person

  attr_reader :name, :id, :birthday, :hi
  attr_writer :name, :birthday, :hi

  def initialize(fb_id)
    @id = fb_id
    user = FacebookApi.new(fb_id)
    @name = user.name
    @birthday = user.birthday
    @hi = "doesn't say hi."
  end

  def says_hi!
    @hi = "says hi!"
  end

end

user1 = Person.new("10153444670752573")
puts "#{user1.name} is born on #{user1.birthday}. He #{user1.hi}"

user2 = Person.new("500991734")
user2.says_hi!
puts "#{user2.name} is born on #{user2.birthday}. He #{user2.hi}"

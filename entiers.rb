numbers = [0,10,11]
numbers << 12


# numbers.each do |number|
#   puts "Is #{number} even? #{number.even?}"
# end

count_even = 0
numbers.each do |number|

  if number.even?
    parite = "pair"
    count_even += 1
  else
    parite = "impair"
  end

  puts "#{number} est #{parite}"

end

puts "Il y avait dans le tableau #{count_even} nombres pairs"

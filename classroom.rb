# def student(first_name, last_name, age)
#   student = {
#     "first_name" => first_name,
#     "last_name" => last_name,
#     "age" => age
#   }
# end

# def student(first_name, last_name, age)
#   student = {
#     :first_name => first_name,
#     :last_name => last_name,
#     :age => age
#   }
# end

def student(first_name, last_name, age)
  student = {
    first_name: first_name,
    last_name: last_name,
    age: age
  }
end
student_1 = student("clement", "pinon", "30")
student_2 = student("christelle", "arquie", "31")

#puts student_1

classroom =[]
classroom << student_1
classroom << student_2

classroom.each do |student|
  #puts "Un des élèves se prénome #{student["first_name"].capitalize}"
  puts "Un des élèves se prénome #{student[:first_name].capitalize}"
end

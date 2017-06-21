puts "What is the hamster's name?"
name = gets.chomp
puts "On a scale of 1 to 10, how loud is it (1=super quiet, 10=crazy loud)?"
volume = gets.chomp.to_i
puts "What color is the hamster?"
color = gets.chomp
puts "Is it friendly (it is or it is not)?"
friendly = gets.chomp
puts "How old do you think it is?"
age = gets.chomp.to_i

# def ham_age(age)
#   if age == ""
#     age = nil
#   end
# end
# puts "ham is #{age} and how loud #{volume}"


puts "This #{color} hamster that you brought in is named #{name}, its volume level is #{volume} and seems to be about #{age} years old. #{friendly} adoptable."

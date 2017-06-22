puts "how many employees?"
employees = gets.chomp.to_i
while employees > 0
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  born_year = gets.chomp.to_i

  current_year = age + born_year
  if current_year != 2017
    age = false
  else
    age = true
  end

  puts "Our company cafeteria serves garlic bread. Should we order some for you?"

  garlic_bread = gets.chomp
  if garlic_bread == "no"
    garlic_bread = false
  elsif garlic_bread == "yes"
    garlic_bread = true
  end

  puts "Would you like to enroll in the company's health insurance?"
  insurance = gets.chomp

  if insurance == "no"
    insurance = false
  elsif insurance == "yes"
    insurance = true
  end

  allergies = nil
  while allergies != "sunshine"
    puts "name any allergies"
    allergies = gets.chomp
    if allergies == "done"
      break
    end
  end

  if allergies == "sunshine"
    puts "Probably a vampire"
  elsif name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire"
  elsif age && (garlic_bread || insurance)
    puts "Probably not a vampire"
  elsif !age && (garlic_bread || insurance)
    puts "Probably a vampire"
  elsif !age && !garlic_bread && !insurance
    puts "Almost certainly a vampire"
  else
    puts "Results inconclusive"
  end

employees -= 1
  if employees == 0
    puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
  end
end

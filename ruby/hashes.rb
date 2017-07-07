def design_your_house
#create empty hash to store incoming data
  client_info = {}

#ask for user input, and set it to hash key symbol.
  puts "Client's first name:"
  client_info[:first] = gets.chomp
  puts "Client's last name:"
  client_info[:last] = gets.chomp
  puts "Client's age:"
#force input to integer
  client_info[:age] = gets.chomp.to_i
  puts "Client's number of children:"
#force input to integer
  client_info[:children] = gets.chomp.to_i
  puts "Decor style preference:"
  client_info[:style] = gets.chomp
  puts "Type of counter tops:"
  client_info[:counter] = gets.chomp
  puts "Is the house haunted? [y/n]"
#force input to lowercase y/n, and then coerce y/n to true or false, respectively
  client_info[:haunted] = gets.chomp.downcase
    if client_info[:haunted] == "y"
      client_info[:haunted] = true
    elsif client_info[:haunted] == "n"
      client_info[:haunted] = false
    end
  p client_info
  puts "Is that your final answer? [y/n]"
  answer = gets.chomp.downcase
#check to see if input is anythign other than y/n, if it is, then reask until y/n
  until answer == "y" || answer == "n"
    puts "Y or N!!!"
    answer = gets.chomp.downcase
  end

#if input is n, then ask user which key to update
  if answer == "n"
    puts "What would you like to update?"
#assign answer to new variable and force to symbol
    update_key = gets.chomp.to_sym
    puts "What would you like to update #{update_key} to?"
#assign answer to new variable, and assign new value to key
    updated = gets.chomp
    client_info[update_key] = updated
  end
  
#print updated hash
  p client_info
end
design_your_house

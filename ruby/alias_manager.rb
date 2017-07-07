#create method that changes input vowel to next vowel in sequence
def next_vowel(letter)
#declare the vowels

  vowels = "aeiou"
  index = vowels.index(letter)
#assign input to the next vowels
  letter = vowels[index + 1]

#check for edge case
  if letter == nil
#hardcode "a" for input of "u"
    letter = "a"
  end
  letter
end

#create method that changes input consonant to next consonant in sequence
def next_consonant(letter)
#declate consonants
  consonants = "bcdfghjklmnpqrstvwxyz"
  index = consonants.index(letter)
#assign input to the next consonant
  letter = consonants[index + 1]

#check for edge case
  if letter == nil
#hardcode "b" for input of "z"
    letter = "b"
  end
  letter
end

#create encryption method
def secret_spy_name(name)
#force input to be all lowercase letters. Will capitalize at the end
  name = name.downcase
  consonants = "bcdfghjklmnpqrstvwxyz"
  vowels = "aeiou"
#swap the first and last names
#split the input name by the space (assuming only first and last name)
  split_name = name.split(" ")
  first_name = split_name[1]
  last_name = split_name[0]
#join swapped name
  full_name = first_name + " " + last_name
#split swapped name by the letter, to create an array of letters
  split_spy = full_name.split("")

#iterate through each letter in array and permanently modify it to the next letter
  split_spy.map! do |letter|
#check for spacing, keep spacing
    if letter == " "
      letter = " "
#check to see if letter is consonant
    elsif consonants.index(letter) != nil
      letter = next_consonant(letter)
#if not, it's a vowel
    else
      letter = next_vowel(letter)
    end
  end

#join the modified array by letter, to glue letters back to words
  joined_spy = split_spy.join("")
#split newly encrypted names by the space so can easily capitalize each word
#assign it to new variable, as split will return array, and can map! array
  encrypt = joined_spy.split(" ")
  encrypt.map! {|word| word.capitalize}
#join by space to get two capitalized words
  encrypt.join(" ")
end

aliases = {}

name = nil
until false
  puts "Enter name for encryption. Enter 'quit' to exit."
  name = gets.chomp

  break if name == "quit"

  "Here is the encrypted name:"
  aliases[name] = secret_spy_name(name)
  puts secret_spy_name(name)
end
aliases.each do |real_name, secret_name|
  puts "#{real_name}, aka #{secret_name}"
end
puts "Goodbye"

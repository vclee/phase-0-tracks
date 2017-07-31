require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("contacts.db")
db.results_as_hash = true

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS contacts(
    id INTEGER PRIMARY KEY,
    last_name VARCHAR(255),
    first_name VARCHAR(255),
    phone_number INT
  )
SQL

db.execute(create_table)

def create_contact(db, last_name, first_name, phone_number)
  db.execute("INSERT INTO contacts (last_name, first_name, phone_number)
  VALUES (?, ?, ?)", [last_name, first_name, phone_number])
end

def contact_list(db)
  db.execute("SELECT * FROM contacts")
end

if contact_list(db).empty?
  10.times do
    create_contact(db, Faker::Name.last_name, Faker::Name.first_name, Faker::PhoneNumber.phone_number)
  end
  contacts = db.execute("SELECT * FROM contacts")
end

answer = true

until answer == "exit"
  puts "\nWhat would you like to do with your contacts list?"
  puts "\nInput 'ADD' to add a new contact"
  puts "Input 'UPDATE' to update the contact's phone number"
  puts "Input 'REMOVE' to remove contact"
  puts "Input 'PRINT' to print out the current contact list"
  puts "Input 'EXIT' to exit out of program"
  puts ""
  answer = gets.chomp.downcase

  if answer == "add"
    puts "\nWhat is the new contact's last name?"
    l_name = gets.chomp

    puts "\nWhat is the new contact's first name?"
    f_name = gets.chomp

    puts "\nWhat is the new contact's phone number?"
    new_num = gets.chomp

    create_contact(db, l_name, f_name, new_num)

  elsif answer == "update"
    puts "\nWhat is the last name of the contact you want to modify?"
    l_name = gets.chomp

    puts "\nWhat is the first name of the contact you want to modify?"
    f_name = gets.chomp

    puts "\nWhat is their new phone number?"
    new_num = gets.chomp

    found = contact_list(db).find { |contact| contact['last_name'] == l_name && contact['first_name'] == f_name }
    if found
      db.execute("UPDATE contacts SET phone_number='#{new_num}' WHERE last_name='#{l_name}' AND first_name='#{f_name}'")
    else
      puts "\nContact doesn't exist."
    end

  elsif answer == "remove"
    puts "\nWhat is the last name of the contact you want to remove?"
    l_name = gets.chomp

    puts "\nWhat is the first name of the contact you want to remove?"
    f_name = gets.chomp

    db.execute("DELETE FROM contacts WHERE last_name='#{l_name}' AND first_name='#{f_name}'")

    puts "\nContact removed."

  elsif answer == "print"
    contact_list(db).each do |contact|
      puts "  #{contact['last_name']}, #{contact['first_name']}:   #{contact['phone_number']} "
    end
  end
end

puts "\n        *.*.* MY CONTACTS *.*.*"
puts ""
contact_list(db).each do |contact|
  puts "    #{contact['last_name']}, #{contact['first_name']}:    #{contact['phone_number']} "
end

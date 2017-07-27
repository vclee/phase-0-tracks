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
  # p contact_list
else
  contact_list(db).each do |contact|
    puts "#{contact['last_name']}, #{contact['first_name']}, #{contact['phone_number']}, "
  end
end

puts "What would you like to do with your contacts list?"
puts "Input 'add' to add a new contact, 'update' to update the contact's phone number, or 'remove' to remove contact."
answer = gets.chomp.downcase

if answer == "add"
  puts "what is the new contact's last name?"
  l_name = gets.chomp

  puts "what is the new contact's first name?"
  f_name = gets.chomp

  puts "what is the new contact's phone number?"
  new_num = gets.chomp

  create_contact(db, l_name, f_name, new_num)
elsif  answer == "update"
  puts "what is the last name of the contact you want to modify?"
  l_name = gets.chomp

  puts "what is their new phone number?"
  new_num = gets.chomp

  found = contact_list(db).find { |contact| contact['last_name'] == l_name }
  if found
    db.execute("UPDATE contacts SET phone_number='#{new_num}' WHERE last_name='#{l_name}'")
  else
    puts "Contact doesn't exist."
  end
elsif answer == "remove"
  puts "what is the last name of the contact you want to remove?"
  l_name = gets.chomp

  db.execute("DELETE FROM contacts WHERE last_name='#{l_name}'")
end

contact_list(db).each do |contact|
  puts "#{contact['last_name']}, #{contact['first_name']}, #{contact['phone_number']}, "
end

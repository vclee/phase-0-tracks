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

contact_list = db.execute("SELECT * FROM contacts")
if contact_list.empty?
  10.times do
    create_contact(db, Faker::Name.last_name, Faker::Name.first_name, Faker::PhoneNumber.phone_number)
  end
  contacts = db.execute("SELECT * FROM contacts")
  p contact_list
else
  p contact_list
end

puts "What would you like to do with your contacts list?"
puts "Input 'add' to add a new contact, 'update' to update a new contact, or 'remove' to remove contact."
answer = gets.chomp

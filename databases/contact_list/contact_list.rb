require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("contacts.db")
db.results_as_hash = true

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS contacts(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    phone_number INT
  )
SQL

db.execute(create_table)

db.execute("INSERT INTO contacts (first_name, last_name, phone_number)
  VALUES ('bee', 'boo', 123)")
contacts = db.execute("SELECT * FROM contacts")
p contacts

def create_contact(db, first_name, last_name, phone_number)
  db.execute("INSERT INTO contacts (first_name, last_name, phone_number)
    VALUES (?, ?, ?)", [first_name, last_name, phone_number])
end

10.times do
  create_contact(db, Faker::Name.first_name, Faker::Name.last_name, Faker::PhoneNumber.phone_number)
end

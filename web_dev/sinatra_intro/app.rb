# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/contact' do
  "123 Main Street, USA"
end

get '/great_job' do
  if params[:name]
    "Good job, #{params[:name]}!"
  else
    "Good job!"
  end
end

get '/:num1/+/:num2' do
  num1 = params[:num1].to_s.to_i
  num2 = params[:num2].to_s.to_i

  sum = num1 + num2

  "The sum of #{num1} and #{num2} is #{sum}"
end


# RELEASE 1:
#
# 1. Is Sinatra the only web app library in Ruby? What are some others?
#   There are also Hanami and Rails.
# 2.Are SQLite and the sqlite3 gem your only options for using a database with
#   Sinatra? What are some others?
#   There are also MySQL and PostgreSQL.
# 3. What is meant by the term web stack?
#   It's the components for making a website such as: languages, OS, web server, databases, etc.

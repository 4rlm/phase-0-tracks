# require gems
require 'sinatra'
require 'sqlite3'

# SHOTGUN
# terminal: shotgun test.rb
# localhost: 9393

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


#### Release 0: Add Routes

#1) A /contact route that displays an address (you can make up the address).
# http://localhost:9393/contact/123%20Main%20St,%20Anytown,%20USA
get '/contact/:address' do
  address = params[:address]
  "My address is #{address}."
end


#2) A /great_job route that can take a person's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"
# QUERY PARAMETERS

# http://localhost:9393/great_job/?name=Adam
get '/great_job/' do
  name = params[:name]

  if name
    "Great job, #{params[:name]}!"
  else
    "Great job!"
  end

end


#3) A route that uses route parameters to add two numbers and respond with the result. The data types are tricky here -- when will the data need to be (or arrive as) a string?

# ROUTE PARAMETERS
# http://localhost:9393/5/2
get '/:num_1/:num_2' do
  "#{params[:num_1]} + #{params[:num_2]} = #{params[:num_1].to_i + params[:num_2].to_i}"
end


#4) Optional bonus: Make a route that allows the user to search the database in some way -- maybe for students who have a certain first name, or some other attribute. If you like, you can simply modify the home page to take a query parameter, and filter the students displayed if a query parameter is present.


## Release 1: Research on Your Own
#1) Is Sinatra the only web app library in Ruby? What are some others? - No.  There are others, such as Ruby on Rails.

#2) Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others? - No, there are others, such as PostgreSQL.

# 3) What is meant by the term web stack? - It's a collection of software required for Web development, such as an operating system, a programming language, database software and a Web server.

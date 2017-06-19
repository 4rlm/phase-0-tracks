require 'sinatra'
require 'sqlite3'
# SHOTGUN
# terminal: shotgun test.rb
# localhost: 9393

## Two ways to pass information:
#1) Query Parameters
#2) Route Parameters

db = SQLite3::Database.new("students.db")
db.results_as_hash = true


# QUERY PARAMETERS
# http://localhost:9393/?name=adam
get '/' do
  p params

  name = params[:name]

  if name
    "Hello, #{name}!"
  else
    "<h1><a href='http://www.google.com'>Hello</a> you!</h1>"
  end
end


# QUERY PARAMETERS
# http://localhost:9393/?name=Adam&age=40
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# ROUTE PARAMETERS
# http://localhost:9393/about/adam
# More updated/modern query parameter.
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

# ROUTE PARAMETERS
# http://localhost:9393/Romeo/loves/Juliette
get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}."
end

# #Access SQLite3 - Basic
# get '/students' do
#   students = db.execute("SELECT * FROM students")
#   students.to_s
# end

#Access SQLite3 - Detailed
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

#Access SQLite3 - Search by ID
get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

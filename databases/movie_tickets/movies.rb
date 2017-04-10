require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("movies.db")
db.results_as_hash = true


# learn about fancy string delimiters (heredoc)
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS box_office(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    actors VARCHAR(255),
    genre VARCHAR(255),
    rating INTEGER,
    price FLOAT,
    username VARCHAR(255),
    ordernum VARCHAR(255)
  )
SQL


# create a box_office table (if it's not there already)
db.execute(create_table_cmd)

# add a test order
db.execute("INSERT INTO box_office (title, actors, genre, rating, price, username, ordernum) VALUES ('Happy Days', 'Tim Brown', 'Comedy', 3, 15.99, 'moviebuff1', '#{ordernum}')")

# SecureRandom.hex(n=6)
# ordernum = SecureRandom.hex(n=6)

movies = [
  {
    title: "Happy Days",
    actors: "Tim Brown",
    genre: "Comedy",
    rating: 3,
    price: 15.99
  },
  {
    title: "Legends of Triumph",
    actors: "Amy Winters",
    genre: "Action",
    rating: 2,
    price: 12.99
  },
  {
    title: "Life of Buddha",
    actors: "Seung Cheol Lee",
    genre: "Educational",
    rating: 5,
    price: 17.99
  }
]











# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("short_lister.db")
db.results_as_hash = true

# learn about fancy string delimiters (heredoc)
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS apt_list(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    amenities VARCHAR(255),
    rent_range VARCHAR(255),
    commute INTEGER,
    rating INTEGER,
    comments VARCHAR(255)
  )
SQL

# create a apt_list table (if it's not there already)
db.execute(create_table_cmd)

# add an test entry
# db.execute("INSERT INTO apt_list (name, address, amenities, rent_range, commute, rating, comments) VALUES ('Tacara Steiner Ranch', '8801 N FM 620, Austin, TX 78726', 'pool, gym, gardens, amazing view', '$ 999 - 1,499', 40, 4, 'Very amazing, except the commute is longer than others.') ")

def apt_adder
  puts "Add a new appartm"
end

# apt_adder

def apt_viewer(db)
  apts = db.execute("SELECT * FROM apt_list")
  apts.each do |apt|
    puts "#{apt['name']}, located at #{apt['address']} is rated #{apt['rating']} because it's #{apt['comments']}.  The monthly rent is in the range of #{apt['rent_range']} and includes #{apt['amenities']} with an average rush-hour commute time of #{apt['commute']} minutes."
  end
end

apt_viewer(db)


# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

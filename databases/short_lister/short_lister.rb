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

def apt_adder(db)
  puts "1)Enter apartment name:"
  inp_name = gets.chomp

  puts "2) Address:"
  inp_addr = gets.chomp

  puts "3) Amenities:"
  inp_amen = gets.chomp

  puts "4) Rent Range:"
  inp_rent = gets.chomp

  puts "5) Commute:"
  inp_commute = gets.chomp

  puts "6) Rating:"
  inp_rating = gets.chomp

  puts "7) Comments:"
  inp_comments = gets.chomp

  db.execute("INSERT INTO apt_list (name, address, amenities, rent_range, commute, rating, comments) VALUES ('#{inp_name}', '#{inp_addr}', '#{inp_amen}', '#{inp_rent}', '#{inp_commute.to_i}', '#{inp_rating.to_i}', '#{inp_comments}') ")
end


# explore ORM by retrieving data
def apt_viewer(db)
  apts = db.execute("SELECT * FROM apt_list")
  apts.each do |apt|
    puts "\n\nApt #{apt['id']}) #{apt['name']}, located at #{apt['address']} is rated #{apt['rating']} because #{apt['comments']}.\nThe monthly rent is in the range of #{apt['rent_range']} and includes #{apt['amenities']} with an average rush-hour commute time of #{apt['commute']} minutes."
  end
end

def prompter(db)
  puts "Enter 'Add' to add new apartment.\nEnter 'View' to view all apartments.\n"
  input = gets.chomp

  if input.downcase == "add"
    apt_adder(db)
  elsif input.downcase == "view"
    apt_viewer(db)
  end

end

prompter(db)

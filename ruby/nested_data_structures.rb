# 5.4 Nested Data Structures

classroom = {
    desk1: [
        "pencils: 5",
        "erasers: 1",
        "notebooks: 2",
        "text books: 3"
    ],
    desk2: [
        "pencils: 3",
        "erasers: 2",
        "notebooks: 1",
        "text books: 4"
    ],
    desk3: [
        "pencils: 4",
        "erasers: 1",
        "notebooks: 3",
        "text books: 2"
    ],
    desk4: [
        "pencils: 1",
        "erasers: 4",
        "notebooks: 2",
        "text books: 2"
    ],
    desk5: [
        "pencils: 2",
        "erasers: 3",
        "notebooks: 4",
        "text books: 5"
    ]
}
divide = "\n---------------------\n"
section_divide ="\n============\n"

puts section_divide
puts "(1) Original Classroom Hash:"
puts "(1) Original Classroom: #{classroom}#{divide}"
puts "Desk1: #{classroom[:desk1]}#{divide}"
puts "Desk1 Pencils: #{classroom[:desk1][0]}"
puts "Desk2 Erasers: #{classroom[:desk2][1]}"
puts "Desk3 Notebooks: #{classroom[:desk3][2]}"
puts "Desk4 Text Books: #{classroom[:desk4][3]}"
puts "Desk4 Text Books: #{classroom[:desk4][3]}"

puts section_divide
puts "(2) Modified Classroom Hash:"
puts "classroom[:desk1].push('stickers: 3')"
classroom[:desk1].push("stickers: 3")
puts "classroom[:desk2].push('markers: 2')"
classroom[:desk2].push("markers: 2")
puts "classroom[:desk3].push('pencil sharpener: 1')"
classroom[:desk3].push("pencil sharpener: 1")
puts "classroom[:desk4].push('stickers: 8')"
classroom[:desk4].push("stickers: 8")
puts "classroom[:desk5].push('crayons: 12')"
classroom[:desk5].push("crayons: 12")
puts "(2) Modified Classroom: #{classroom}#{divide}"

puts section_divide
puts "(3) Modified Classroom Hash:"
puts "classroom[:desk1][4] = 'crayons: 18'"
classroom[:desk1][4] = "crayons: 18"
puts "classroom[:desk2][4] = 'stickers: 8'"
classroom[:desk2][4] = "stickers: 8"
puts "classroom[:desk3][4] = 'sticker books: 2'"
classroom[:desk3][4] = "sticker books: 2"
puts "classroom[:desk4][4] = 'pencil sharpeners: 1'"
classroom[:desk4][4] = "pencil sharpeners: 1"
puts "classroom[:desk5][4] = 'markers: 7'"
classroom[:desk5][4] = "markers: 7"
puts "(3) Modified Classroom: #{classroom}#{divide}"
puts section_divide

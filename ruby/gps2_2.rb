# https://github.com/4rlm/phase-0-tracks/blob/master/ruby/gps2_2.rb
#######################
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: promt user for items, process items.
# output: confirm items, prompt for next step.

# Method to remove an item from the list
# input: items
# steps: promt user for items, process items.
# output: confirm items, prompt for next step.

# Method to update the quantity of an item
# input: items
# steps: promt user for items, process items.
# output: confirm items, prompt for next step.


# Method to print a list and make it look pretty
# input: items
# steps: puts the items and options for nex steps.
# output: confirm items, prompt for next step.


######################
msg = {
creator_msg: "\n\n#{"="*40}\n\nWelcome to the Grocery List App",
adder_msg: "\n\nPlease add items to the grocery list, each separated with a space.",
adder_confirm: "\n\nThank you!  You've added the following items:",
adder_prompt: "Enter a quantity for:",
updater_list_prompt: "\n\nPlease enter the items you would like to update, each separated with a space.",
updater_prompt: "\n\nEnter a quantity for:",
updater_confirm: "\n\nYou've chosen to update:",
remover_msg: "\n\nPlease enter the items you'd like to remove, each separated with a space.",
remover_confirm: "\n\nThe following items have been removed from your list.",
printer_prompt: "\n\nEnter 'add', 'remove', 'update', or 'exit'",
printer_confirm: "Your Grocery list Includes:",
exit_msg: "\n\nThank you for using the shopping list app.\n\nHave a great day!\n\n"}


def creator(msg)
    puts msg[:creator_msg]
    master_list = {}
    adder(master_list, msg)
end

def adder(master_list, msg)
    puts msg[:adder_msg]
    item_string = gets.chomp
    items = item_string.split(" ")
    puts "#{msg[:adder_confirm]} #{items}\n\n"
    items.each do |item|
        puts "#{msg[:adder_prompt]} #{item}\n\n"
        num = gets.chomp
        master_list[:"#{item}"] = num
    end
    printer(master_list, msg)
end

def remover(master_list, msg)
    puts msg[:remover_msg]
    item_string = gets.chomp
    items = item_string.split(" ")
    items.each do |item|
        master_list.delete(:"#{item}")
    end
    puts "#{msg[:remover_confirm]} #{items}\n\n"
    printer(master_list, msg)
end

def updater(master_list, msg)
    puts msg[:updater_list_prompt]
    item_string = gets.chomp
    items = item_string.split(" ")
    puts "#{msg[:updater_confirm]} #{items}\n\n"
    items.each do |item|
        puts "#{msg[:updater_prompt]} #{item}\n\n"
        num = gets.chomp
        master_list[:"#{item}"] = num
    end
    printer(master_list, msg)
end

def printer(master_list, msg)
    puts msg[:printer_confirm]
    master_list.each do |k,v|
        puts "#{k}: #{v}"
    end
    puts msg[:printer_prompt]
    choice = gets.chomp
    options(choice, master_list, msg)
end

def options(choice, master_list, msg)
    if choice == "add"
        adder(master_list, msg)
    elsif choice == "remove"
        remover(master_list, msg)
    elsif choice == "update"
        updater(master_list, msg)
    else
        puts msg[:exit_msg]
    end
end

creator(msg)


##########################

# Release 4: Reflect
# On your own, add a commented reflection section to your gps2_2.rb file. Answer the following questions in your reflection:
#
# What did you learn about pseudocode from working on this challenge?
# It was helpful to plan out the app.
# What are the tradeoffs of using arrays and hashes for this challenge?
# Arrays are often easier and more familiar, but hashes are easier to access when targeting specific items.
# What does a method return?
# Method returns the final value at the end of it.
# What kind of things can you pass into methods as arguments?
# You can pass through just about anything throug the arguments.
# How can you pass information between methods?
# You can pass info between methods by using the arguments and parameters.
# What concepts were solidified in this challenge, and what concepts are still confusing?
# The exercise was very fun and I learned alot.  But I think the concepts were very straightforward.

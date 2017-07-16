#grocery list

# -add item (quantities)
# -remove item
# -update quantities
# -print list-fancy
# -array vs hash
# -!! what's passed in vs return value

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza") [carrots, apples , cereal, pizza]
# steps:
  # create a method that passes in a list of items
  # split up each item from list
  # each item from list will become the KEY element for the grocery list
  # set default quantity to 1 as we create each KEY
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] Hash

def create_list(list)
  grocery_list = {}

  list.split(" ").each do |item|
    grocery_list[item] = 1
  end

  grocery_list
end


grocery_list = create_list("carrots apples cereal")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: append list with and quantity as VALUE
# output: list in HASH form
#method_add(list, carrot, qty)

def add_item(list, item, qty = 1)
  list[item] = qty

  list
end

p add_item(grocery_list, "onion")


# Method to remove an item from the list
# input: list, item name to remove
# steps: check the KEYs in HASH using destructive method to match and delete
# output: list in HASH form

def remove_item(list, item)
  # list.delete_if do |grocery_item, qty|
  #   grocery_item == item
  # end
  list.delete(item)

  list
end

# remove_item(grocery_list, "orange")

# Method to update the quantity of an item
# input: list, item name to update, qty to remove/add
# steps: compare each item on list to the item to search for
# once item is found, update quantity
# output: list in HASH form

def change_quantity(list, item, qty)
  list[item] = qty
  list
end
# Think about how to check against user error
p change_quantity(grocery_list, "cereal", 5)


# Method to print a list and make it look pretty
# input: list
# steps: convert KEYS to STRINGS and add readable syntax before each VALUE
# output: list in fancy readable HASH form

def pretty_list(list)
  list.each do |grocery_item, qty|
    puts "#{grocery_item}, quantity: #{qty}"
  end
end

pretty_list(grocery_list)


# Release 4: Reflect

# ---What did you learn about pseudocode from working on this challenge?

# I admitted in the beginning of the session that I feel that I can be stronger
# with my pseudocode. When I am writing pseudocode, sometimes I feel like a line that
# I want to write would be too simple or too 'plain', and I always want to be more
# specific. In this GPS session, my pair Sam and I probably were too specific, and
# we tried to implement and mention certain methods we would use in the pseudocode.
# Our guide, Davina made a super good point in our feedback. She said that pseudocode
# should be about what needs to be done, not what you're going to do. And I literally
# wrote that down on a piece of paper. She says it is more than ok for pseudocode to
# be super general and simple, and don't worry about the specifics yet.

# ---What are the tradeoffs of using arrays and hashes for this challenge?

# We recognized in the very beginning that a hash would probably be the best data
# structure to use and would make the most sense. Arrays would not let us store values,
# whereas a hash has key/value pairs that we could use for our methods that need to associate
# quantity values to keys.

# ---What does a method return?

# A method can return anything or nothing at all. Ruby's implicit return function
# allows for the last line of code run to be the return value, so in our grocery list
# methods, we would often just have the hash return as the last line within our
# methods. We did not need to have explicit returns in this challenge. Also, some
# built-in methods have different return values that we have to be aware of, and
# whether or not they are destructive, such as .each or .split. Our guide pointed
# out in our list generating method the return value of .split, where we originally
# had tried to have the passed in argument equal the argument.split. However, it
# was unnecessary as .split returns a new split array. However, methods like .each
# do not permanently alter arrays, and the return value is the original array.

# ---What kind of things can you pass into methods as arguments?

  # So far I've seen all the objects and data types that I've encountered so far
  # have been used to pass into methods, ie. arrays, hashes, strings, integers,
  # booleans, even other methods.

# ---How can you pass information between methods?

  # The hint in this challenge said we might need to pass methods into methods,
  # but we ended up not having to. You can nest methods within each other, or call
  # a method from within a method, but be mindful of the return values. I've been
  # a victim of not realizing the return of one method was nil, as I tried calling
  # it or passing it in another array.

# ---What concepts were solidified in this challenge, and what concepts are still confusing?

# I fully expected that we would have to manipulate arrays and hashes and how to
# access certain element types. I would've liked to have had more practice with arrays
# in hashes, and how to access certain nested elements, and mindful of whether the
# return is array or key or whatever, etc. I think the interview questions for DBC
# was about that. I'm now more confident with accessing hashes and key/values and
# how to update them after this challenge. It ended up being a lot easier than I
# anticipated.

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# Create new ordered object such as a hash
# set default quantity of 1
  # print the list to the console [can you use one of your other methods here?]
# output: return hash, keys are the items and values are the quantities

items = "carrots apples cereal pizza apples"

def create_list(items)
  hash_list = Hash.new(0)
  items_array = items.split(" ")
  items_array.each do |x|
    hash_list[x] += 1
  end
  return hash_list
end


list = create_list(items)
p list



# Method to add an item to a list
# input: item name and optional quantity
# steps: add key/value pair to a hash. Key is the item and the quantity is the value
# output: The input hash with the added items and their quantities.


def add_item(list, item, quantity)
  list[item] = quantity
end

add_item(list, "water", 3)
add_item(list, "cookies", 3)



# Method to remove an item from the list
# input: hash of items and quantities
# steps: remove key value pair from list
# output: revised hash shopping list

def remove_item(list, item)
  list.delete(item)
end

remove_item(list, "cookies")
p list

# Method to update the quantity of an item
# input: hash of items and quantities
# steps: update quantity (value)
# output: revised shopping list

def update_quan(list, item, quantity)
  list[item] = quantity
end

update_quan(list, "cereal", 3)
p list

# Method to print a list and make it look pretty
# input: Hash of items and quans.
# steps: print the list
# output: the list in a "pretty" format

def print_list(list)
  p "Shopping List:"
  list.each do |k, v|
    p "Item: #{k}, Qauntity: #{v}"
  end
end

print_list(list)


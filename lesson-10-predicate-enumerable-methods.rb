https://ruby-doc.org/core-2.6/




# The include? Method

  numbers = [5, 6, 7, 8]
numbers.include?(6)
#=> true

numbers.include?(3)
#=> false

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = friends.select { |friend| friend != 'Brian' }
invited_list.include?('Brian')
#=> false


# The any? Method

numbers = [21, 42, 303, 499, 550, 811]
numbers.any? { |number| number > 500 }
#=> true
numbers.any? { |number| number < 20 }
#=> false


# The all? Method
# The all? method is also fairly intuitive. It only returns true if all the elements in your array or
# hash match the condition you set within the block; otherwise, it will return false.

fruits = ["apple", "banana", "strawberry", "pineapple"]
fruits.all? { |fruit| fruit.length > 3 }
#=> true
fruits.all? { |fruit| fruit.length > 6 }
#=> false



# The none? Method

fruits = ["apple", "banana", "strawberry", "pineapple"]
fruits.none? { |fruit| fruit.length > 10 }
#=> true
fruits.none? { |fruit| fruit.length > 6 }
#=> false

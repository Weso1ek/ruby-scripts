
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
    invited_list.push(friend)
  end
end

invited_list #=> ["Sharon", "Leo", "Leila", "Arun"]



friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }
#=> ["Sharon", "Leo", "Leila", "Arun"]

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.reject { |friend| friend == 'Brian' }
#=> ["Sharon", "Leo", "Leila", "Arun"]




# EACH

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| puts "Hello, " + friend }

#=> Hello, Sharon
#=> Hello, Leo
#=> Hello, Leila
#=> Hello, Brian
#=> Hello, Arun

#=> ["Sharon", "Leo", "Leila", "Brian" "Arun"]



my_array = [1, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end

#=> The new number is 2.
#=> The new number is 4.

#=> [1, 2]




my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }

one is 1
two is 2
#=> { "one" => 1, "two" => 2}

my_hash.each { |pair| puts "the pair is #{pair}" }

the pair is ["one", 1]
the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}


friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.each { |friend| friend.upcase }

# ORIGINAL VALUE
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']



#The each_with_index Method

fruits = ["apple", "banana", "strawberry", "pineapple"]
fruits.each_with_index { |fruit, index| puts fruit if index.even? }

#=> apple
#=> strawberry
#=> ["apple", "banana", "strawberry", "pineapple"]




# The #map method (also called #collect) transforms each element from an array according to whatever
# block you pass to it and returns the transformed elements in a new array. #map may seem confusing at
# first, but it is extremely useful. We’ll go through several examples and use cases, which should help
# you understand how and when you can use this enumerable power for good.

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']
my_order.map { |item| item.gsub('medium', 'extra large') }
#=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]

salaries = [1200, 1500, 1100, 1800]
salaries.map { |salary| salary - 700 }
#=> [500, 800, 400, 1100]




# You’ve already seen the #select method in action at the beginning of this lesson in our quest to make
# Brian an outcast.  The #select method (also called #filter) passes every item in an array to a block and
# returns a new array with only the items for which the condition you set in the block evaluated to true.

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.select { |friend| friend != 'Brian' }
#=> ["Sharon", "Leo", "Leila", "Arun"]

responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
responses.select { |person, response| response == 'yes'}
#=> {"Sharon"=>"yes", "Arun"=>"yes"}



# The #reduce method (also called #inject) is possibly the most difficult-to-grasp enumerable for
# new coders. The idea is simple enough, though: it reduces an array or hash down to a single object.
# You should use #reduce when you want to get an output of a single value. A classic example of when
# #reduce is useful is obtaining the sum of an array of numbers. First, let’s explore how we
# would achieve this using #each:

my_numbers = [5, 6, 7, 8]
my_numbers.reduce { |sum, number| sum + number }
#=> 26

#The first block variable in the #reduce enumerable (sum in this example) is known as the accumulator.
# The result of each iteration is stored in the accumulator and then passed to the next iteration. The accumulator
# is also the value that the #reduce method returns at the end of its work. By default, the initial value of the
# accumulator is the first element in the collection, so for each step of the iteration, we would have the following:

#Iteration 0: sum = 5 + 6 = 11
#Iteration 1: sum = 11 + 7 = 18
#Iteration 2: sum = 18 + 8 = 26

#We can also set a different initial value for the accumulator by directly passing in a value to the #reduce method.

my_numbers = [5, 6, 7, 8]
my_numbers.reduce(1000) { |sum, number| sum + number }
#=> 1026


# bang methods

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.map! { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

friends
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

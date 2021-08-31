
if statement_to_be_evaluated == true
  # do something awesome...
end

if 1 < 2
  puts "Hot diggity, 1 is less than 2!"
end
#=> Hot diggity, 1 is less than 2!


puts "Hot diggity damn, 1 is less than 2" if 1 < 2


if attack_by_land == true
  puts "release the goat"
else
  puts "release the shark"
end

if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true
  puts "release the shark"
else
  puts "release Kevin the octopus"
end



# == (equals) returns true if the values compared are equal.

5 == 5 #=> true
5 == 6 #=> false

# != (not equal) returns true if the values compared are not equal.

  5 != 7 #=> true
5 != 5 #=> false

# > (greater than) returns true if the value on the left of the operator is larger than the value on the right.

  7 > 5 #=> true
5 > 7 #=> false

# < (less than) returns true if the value on the left of the operator is smaller than the value on the right.

  5 < 7 #=> true
7 < 5 #=> false

# >= (greater than or equal to) returns true if the value on the left of the operator is larger than or equal to the value on the right.

  7 >= 7 #=> true
7 >= 5 #=> true

# <= (less than or equal to) returns true if the value on the left of the operator is smaller than or equal to the value on the right.

  5 <= 5 #=> true
5 <= 7 #=> true

#eql? checks both the value type and the actual value it holds.

5.eql?(5.0) #=> false; although they are the same value, one is an integer and the other is a float
5.eql?(5)   #=> true


a = 5
b = 5
a.equal?(b) #=> true
                                                                                                                                                                a = "hello"
b = "hello"
a.equal?(b) #=> false



# <=> (spaceship operator) returns the following:

# -1 if the value on the left is less than the value on the right;
# 0 if the value on the left is equal to the value on the right; and
#  1 if the value on the left is greater than the value on the right.

    5 <=> 10    #=> -1
10 <=> 10   #=> 0
10 <=> 5    #=> 1



if 1 < 2 && 5 < 6
  puts "Party at Kevin's!"
end

# This can also be written as
if 1 < 2 and 5 < 6
  puts "Party at Kevin's!"
end

if 10 < 2 || 5 < 6 #=> although the left expression is false, there is a party at Kevin's because the right expression returns true
  puts "Party at Kevin's!"
end

# This can also be written as
if 10 < 2 or 5 < 6
  puts "Party at Kevin's!"
end


grade = 'F'

case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end


age = 18
unless age < 17
  puts "Get a job."
end

age = 18
puts "Welcome to a life of debt." unless age < 17

unless age < 17
  puts "Down with that sort of thing."
else
  puts "Careful now!"
end



age = 18
response = age < 17 ? "You still have your entire life ahead of you." : "You're all grown up."
puts response #=> "You're all grown up."

age = 18
if age < 17
  response = "You still have your entire life ahead of you."
else
  response = "You're all grown up."
end

puts response #=> "You're all grown up."

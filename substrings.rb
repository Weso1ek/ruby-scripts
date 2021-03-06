
# Ruby program that uses substring
# Index 0 = a
# Index 1 = p
# Index 2 = p
# Index 3 = l
# Index 4 = e
value = "apple"

# Get substring at indexes 0 through 3.
# ... This is the first 4 characters.
first_part = value[0..3]

# Get substring at indexes 2 through 3.
second_part = value[2..3]

# Get substring past index 3 through end of string.
last_part = value[3..-1]

puts first_part
puts second_part
puts last_part
appl
pl
le

# =================================================================================

# Ruby program that uses substring comma syntax
value = "love"

# Get substring at index 1 with length 3.
# ... First argument is start index, second is length.
last_three = value[1,3]
puts last_three

# Get substring at index 1 with length 2.
middle_two = value[1,2]
puts middle_two
ove
ov

# =================================================================================

#Ruby program that uses regexp substrings
data = "peace"

# Get three-letter substring starting with lowercase "a."
three_letters = data[/a../]
puts three_letters

data = "part"

# Get three letter substring for a different string.
three_letters = data[/a../]
puts three_letters
ace
art
a    The lowercase letter "a".
                             .    Any character.

# =================================================================================

# Ruby program that uses substring test expression
philosopher = "plato"

# This substring is found, so the expression returns true.
if philosopher["lato"]
  puts true
end

# This substring is not contained with the string.
if philosopher["soc"]
  puts false
end
true

# =================================================================================

# Ruby program that changes substrings
value = "coffee"

# Change range from 2 to last index.
# ... This replaces the substring.
value[2..-1] = "ugh"
puts value

value = "abcd"

# Change substring starting at index 0 with length 2.
# ... Assign a new substring.
value[0,2] = "xy_"
puts value
cough
xy_cd

# =================================================================================

Ruby program that assigns substrings
value = "one one one"

# Replace first instance of this substring.
value["one"] = "two"
puts value

# A regexp also replaces the first (leftmost) instance found.
value[/o\w\w/] = "two"
puts value
two one one
two two one
o    The lowercase letter "o".
\w   A word character (letter or digit).
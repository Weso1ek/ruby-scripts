# Declaring a Variable

# This is how to create a variable in Ruby:

  age = 18 #=> 18

# You can also assign the result of an expression to a variable.

  age = 18 + 5 #=> 23

# Variable names are reusable, so you can assign a new value to a variable at any point in your program. Naturally, doing so will override the original value.

  age = 18
age #=> 18
age = 33
age #=> 33

age = 18
age += 4 #=> 22

age = 18
age -= 2  #=> 16

cash = 10
cash *= 2 #=> 20

temperature = 40
temperature /= 10 #=> 4

# Variable names should always be lowercase, and multiple words that make up a variable name should be split by an underscore. This is known as snake_case.

  # bad
  a = 19
string = "John"

# good
age = 19
name = "John"
can_swim = false



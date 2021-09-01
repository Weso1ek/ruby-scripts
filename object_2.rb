

#Ruby namespace

#To retrieve a constant from the Math module, the scope resolution operator (::), should be used.

puts Math::PI
# => 3.141592653589793

#In this example, Ruby is targetting the PI constant from the Math module using the scope resolution operator, (::), and printing its value to the console.

# In Ruby, the term namespace refers to a module the contains a group of related objects. An example of a Ruby namespace is the Math module.


# Ruby require Keyword

require 'date'

puts Date.today
# => 2020-04-16

# In Ruby, the require keyword is used to fetch a certain module which isn’t yet presented in the interpreter. It is best practice to place this at the beginning of your code.

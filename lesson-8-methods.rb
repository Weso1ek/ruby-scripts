
# This concept allows for what programmers refer to as the DRY approach to programming:
# Don’t Repeat Yourself. Recycling sections of code instead of repeating them throughout your
# programs can make your program more readable and manageable.

# Many languages distinguish between functions, which have no associated object, and methods,
# which are invoked on a receiver object. Because Ruby is a purely object-oriented language,
# all methods are true methods and are associated with at least one object.

# Basically, because everything in Ruby is an object, Ruby only has methods, not functions. With that
# established, we know that when we’re talking about Ruby, “methods” and “functions” refer to the same thing.

"anything".reverse

def my_name
  "Joe Smith"
end

puts my_name    #=> "Joe Smith"

method_name      # valid
_name_of_method  # valid
1_method_name    # invalid
method_27        # valid
method?_name     # invalid
method_name!     # valid
begin            # invalid (Ruby reserved word)
  # begin_count      # valid


  def greet(name)
    "Hello, " + name + "!"
  end

  puts greet("John") #=> Hello, John!

  def greet(name = "stranger")
    "Hello, " + name + "!"
  end

  puts greet("Jane") #=> Hello, Jane!
  puts greet #=> Hello, stranger!


  #What Methods Return

  def my_name
    "Joe Smith"
  end

  puts my_name #=> "Joe Smith"

  def my_name
    return "Joe Smith"
  end

  puts my_name #=> "Joe Smith"


  def even_odd(number)
    if number % 2 == 0
      "That is an even number."
    else
      "That is an odd number."
    end
  end

  puts even_odd(16) #=>  That is an even number.
  puts even_odd(17) #=>  That is an odd number.



  def my_name
    return "Joe Smith"
    "Jane Doe"
  end

  puts my_name #=> "Joe Smith"



  def even_odd(number)
    unless number.is_a? Numeric
      return "A number was not entered."
    end

    if number % 2 == 0
      "That is an even number."
    else
      "That is an odd number."
    end
  end

  puts even_odd(20) #=>  That is an even number.
  puts even_odd("Ruby") #=>  A number was not entered.



  x = return_squared(20) #=> 400
  y = 100
  sum = x + y #=> 500

  puts "The sum of #{x} and #{y} is #{sum}."
  #=> The sum of 400 and 100 is 500.


  #Chaining Methods

  phrase = ["be", "to", "not", "or", "be", "to"]

  puts phrase.reverse.join(" ").capitalize
  #=> "To be or not to be"

  ["be", "to", "not", "or", "be", "to"].reverse
  = ["to", "be", "or", "not", "to", "be"].join(" ")
  = "to be or not to be".capitalize
  = "To be or not to be"


  #Predicate Methods

  # You will sometimes encounter built-in Ruby methods that have a question mark (?) at the
# end of their name, such as even?, odd?, or between?. These are all predicate methods, which is
# a naming convention that Ruby uses for methods that return a Boolean, that is, they return either true or false.

  puts 5.even?  #=> false
  puts 6.even?  #=> true
  puts 17.odd?  #=> true

  puts 12.between?(10, 15)  #=> true

  # You can also create your own method with a ? at the end of its name to indicate that it returns a
  # Boolean. Ruby doesn’t enforce this naming convention, but you will thank yourself later for following this guideline.

  #Bang Methods

  # When we call a method on an object, such as our whisper string above, it does not modify the original
  # value of that object. A general rule in programming is that you do not want your methods to overwrite
  # the objects that you call them on. This protects you from irreversibly overwriting your data by accident.
  # You are able to overwrite your data by explicitly re-assigning a variable (such as whisper = whisper.downcase).
  # Another way to do this type of reassignment is with bang methods, which are denoted with an exclamation mark (!) at the end of the method name.

  whisper = "HELLO EVERYBODY"

  puts whisper.downcase #=> "hello everybody"
  puts whisper #=> "HELLO EVERYBODY"

  puts whisper.downcase! #=> "hello everybody"
  puts whisper #=> "hello everybody"

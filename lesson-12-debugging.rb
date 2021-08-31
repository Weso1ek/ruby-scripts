
https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/debugging

# Debugging with Pry-byebug

require 'pry-byebug'

def double_words_in_phrase(string)
  string_array = string.split(' ')

  binding.pry

  string_array.map { |word| word * 2 }
  string_array.join(' ')
end

double_words_in_phrase("This is a test")

##########################################

require 'pry-byebug'

def yell_greeting(string)
  name = string

  binding.pry

  name = name.upcase
  greeting = "WASSAP, #{name}!"
  puts greeting
end

yell_greeting("bob")

##########################################

[1] pry(main)> name
=> "bob"
[2] pry(main)> greeting
=> nil
[3] pry(main)> next

5: def yell_greeting(string)
  6:   name = string
  7:
    8:   binding.pry
  9:
    10:   name = name.upcase
  => 11:   greeting = "WASSAP, #{name}!"
  12:   puts greeting
  13: end

[4] pry(main)> name
=> "BOB"

##########################################
i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end

#while

# The until loop is the opposite of the while loop. A while loop continues for as long as the condition
# is true, whereas an until loop continues for as long as the condition is false. These two loops can
# therefore be used pretty much interchangeably. Ultimately, what your break
# condition is will determine which one is more readable.

i = 0
while i < 10 do
  puts "i is #{i}"
  i += 1
end

i = 0
until i >= 10 do
  puts "i is #{i}"
  i += 1
end

# ranges

(1..5)      # inclusive range: 1, 2, 3, 4, 5
(1...5)     # exclusive range: 1, 2, 3, 4

# We can make ranges of letters, too!
('a'..'d')  # a, b, c, d

for i in 0..5
  puts "#{i} zombies incoming!"
end


# Times Loop

# If you need to run a loop for a specified number of times, then look no further than the trusty
# #times loop. It works by iterating through a loop a specified number of times and even
# throws in the bonus of accessing the number it’s currently iterating through.

5.times do
  puts "Hello, world!"
end

I’m sure you can guess what that code does. Ruby is easily readable that way!

5.times do |number|
  puts "Alternative fact number #{number}"
end

5.upto(10) {|num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) {|num| print "#{num} " }   #=> 10 9 8 7 6 5
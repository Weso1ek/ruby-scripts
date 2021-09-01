dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dict)
  answer = Hash.new
  dict.each do |substring|
    if word.include? substring
      puts substring
      if !answer.key?(substring)
        answer[substring] = 1
      end
    end
  end
  return answer
end

puts substrings("below", dictionary)

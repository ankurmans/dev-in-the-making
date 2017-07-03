=begin
Create a Histogram
Return the frequency of each word in a string
=end

def frequencies(input_string)

  words = input_string.split(" ")
  frequencies = Hash.new(0)

  words.each { |word| frequencies[word] += 1 }

  frequencies = frequencies.sort_by { |word, count| count }
  frequencies.reverse!

  frequencies.each { |word, count| puts word + " occurs " + count.to_s + " times"}
end

puts "Enter a statement"
text = gets.chomp.downcase
frequencies(text)

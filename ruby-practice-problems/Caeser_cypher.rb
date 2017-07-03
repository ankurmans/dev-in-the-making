=begin
Implement a Caesar cipher. Example: caesar("hello", 3) # => "khoor"
Assume the text is all lower case letters.
You’ll probably want to map letters to numbers (so you can shift them). You can do this mapping yourself, but you may also want to use the ASCII codes, which are accessible through String#each_byte.
You will probably also want to use String#ord and Fixnum#chr.
Important point: ASCII codes are all consecutive!
Lastly, be careful of the letters at the end of the alphabet, like "z"!
=end

def caesar_cipher(offset, string)
  words = string.downcase.split(" ")

  word_idx = 0
  while word_idx < words.length
    word = words[word_idx]

    letter_idx = 0
      while letter_idx < word.length
      char = word[letter_idx].ord -  97

      new_char = (char + offset) % 26
      word[letter_idx] = (97 + new_char).chr

      letter_idx += 1
    end

    word_idx += 1
  end
  return words.join(" ")
end

puts "Enter the number to offset the string"
offset = gets.chomp.to_i
puts "Enter the string"
string = gets.chomp

caesar_cipher(offset, string)

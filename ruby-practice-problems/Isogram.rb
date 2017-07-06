=begin
Isogram
Determine if a word or phrase is an isogram.

An isogram (also known as a "nonpattern word") is a word or phrase without a repeating letter.

Examples of isograms:

lumberjacks
background
downstream
The word isograms, however, is not an isogram, because the s repeats.
=end


def is_isogram(string)
  if string.downcase.chars.uniq == string.downcase.chars
    puts "#{string} is an isogram"
  else
    puts "#{string} is not an isogram"
  end
end

is_isogram("Isogram funn")



  

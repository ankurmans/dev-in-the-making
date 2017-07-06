def LetterCapitalize(str)
  words = str.split(" ")
  new_word = ""
  idx = 0
    while idx < words.length
      new_word << words[idx].capitalize + " "
      idx += 1
    end
  puts "#{new_word}"

end

LetterCapitalize("hello world")
LetterCapitalize("i ran there")

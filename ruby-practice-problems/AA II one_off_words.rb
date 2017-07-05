def one_off_words(str, word_list)
  chars_array = str.split("")
  answer = []

  word_list.each do |word|
    count = 0
    if str.length == word.length #I'm checking if the both strings are of same length
      chars2_array = word.split("")
        idx = 0
        while (idx < word.length)
            if chars_array[idx] != chars2_array[idx]
              count += 1
            end
          idx += 1
        end

        if count == 1  #the counter should be 1 when only words differ in one index
          answer << word
        end
      end
    end
    puts "#{answer}"
end

words = ["door", "moot", "boot", "boots"]
puts one_off_words("moor", words)

words = ["cat", "tac", "rat", "bat"]
puts one_off_words("mat", words)

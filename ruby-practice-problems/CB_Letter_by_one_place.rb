def LetterChanges(str)
  idx, result = 0, ""
    while (idx < str.length)
      if str[idx] == 'z' or str[idx] == 'Z'
        result += "A"
      elsif str[idx].ord < 65 || (str[idx].ord < 97 && str[idx].ord > 90) || str[idx].ord > 122
        result += str[idx]
      else
      result += (str[idx].ord + 1).chr
      end
    idx += 1
  end
  puts "#{result.tr('aeiou', 'AEIOU')}"
end

LetterChanges("ankurz")
LetterChanges("unstoppable")
LetterChanges("Flattery is a art")
LetterChanges("Numbers are digits like 123")

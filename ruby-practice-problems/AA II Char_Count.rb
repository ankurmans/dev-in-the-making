def encrypt(str)
  letters = str.split("")
  idx, count = 0, 1
  result = []

  while idx < letters.length

    if letters[idx] == letters[idx + 1]
      count += 1

    else
      result.push(letters[idx], count)
      count = 1
    end
    idx += 1
  end
 puts "#{result}"
end

encrypt("aaabbcbbaaa")
encrypt("aaaaaaaaaa")
encrypt("")

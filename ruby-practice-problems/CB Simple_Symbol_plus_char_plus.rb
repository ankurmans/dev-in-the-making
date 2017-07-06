def SimpleSymbols(str)
  idx = 0
    while idx < str.length
       if str[idx][/[a-zA-Z]/] == str[idx]
            if str[idx - 1] != '+' || str[idx + 1] != '+'
                return false
            end
      end
    idx += 1
  end
  return true
end

SimpleSymbols("+a++b+=+x+")

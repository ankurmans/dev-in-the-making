def CheckNums(num1,num2)
    if num2 - num1 == 0
        return -1.to_s
    elsif num2 - num1 > 0
        return true
    else
        return false
    end
end

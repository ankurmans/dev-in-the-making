#Write a method that finds if an array of numbers has a pair that sums to zero.
#Be careful of the case of zero; there need to be two zeroes in the array to make a pair
#that sums to zero

def zero_sum(array)
    puts "No pairs found. Enter 2 or more numbers." if array.length == 1

  idx = 0

    while idx < array.length
      idx2 = idx + 1
      while idx2 < array.length
        if array[idx] + array[idx2] == 0
          puts "Pair found that sums to zero. #{array[idx]} + #{array[idx2]} = 0"
        end
        idx2 += 1
      end
      idx += 1
    end
end

puts zero_sum([1, 2])
puts zero_sum([1, 3, 2, -1, -3])
puts zero_sum([0])
puts zero_sum([0,0])

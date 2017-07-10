#Returns the first and last index of years whose cumulative dog years is max
#puppy_golden_age([100, -101, 200, -3, 1000]) == [2, 4]

  def puppy_golden_age(years_array)
    golden_index = []
    for idx in 0...years_array.length
      if years_array[idx].to_i > years_array[idx+1].to_i
        golden_index.push(idx) #Creates an array with index with greatest years between 2 consecutive years
      end
    end
  [golden_index[0], golden_index[(golden_index.length - 1)]]
  end

puts "puppy_golden_age([100, 101, 200, -3, 1000]) == [2, 4]" + (puppy_golden_age([100, 101, 200, -3, 1000]) == [2, 4]).to_s
puts "puppy_golden_age([5, 3, -5, 1, 19, 2, -4]) == [0, 5] " + (puppy_golden_age([5, 3, -5, 1, 19, 2, -4]) == [0, 5]).to_s

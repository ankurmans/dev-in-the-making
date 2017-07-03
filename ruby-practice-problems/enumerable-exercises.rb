=begin
Write a method that takes an array of integers and returns an array with the array elements multiplied by two.
=end

def array_times2(array)
  new_array = []
  new_array << array.map {|i| i*2}
  puts "#{array} multiplied by 2: #{new_array}"
end

puts array_times2([1, 2, 3])

=begin
Write a method that finds the median of a given array of integers. If the array has an odd number of integers, return the middle item from the sorted array. If the array has an even number of integers, return the average of the middle two items from the sorted array.
=end

def median(array)
  new_array = array.sort
  count = new_array.count
    if count % 2 != 0
      puts "The Median is: #{new_array[count / 2]}"
    else
      puts "The Median is: #{(new_array[count / 2]  + new_array[(count / 2) - 1] / 2)}"
    end
end

puts median([4, 5, 2, 9, 1])
puts median([4, 5, 2, 9, 1, 8])



=begin
Create a method that takes in an Array of Strings and uses inject to return the concatenation of the strings.
=end

def array_inject(array)
  array.inject(:+)
end

puts array_inject(["It's ", "such ", "a ", "beautiful ", "day! "])

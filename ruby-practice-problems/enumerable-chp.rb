# Write a method that takes nums and, using inject, returns the
# product of all of the elements.

def inject_product(nums)
  nums.inject(1) do |accum, element| # accum is initially set to 0, the method argument
  accum * element # returns product of all elements
  end
end

nums = [1, 2, 3, 4, 5]
puts inject_product(nums)

# Write a method that takes a range of the integers from 1 to 100
# and uses select to return an array of those that are perfect
# squares.

nums = (1..100)

def perfect_squares(nums)
  array = []
  nums.select do |i|
    array << i*i if i*i <= nums.last
  end
  puts "Perfect Square between 1 to 100:\n #{array}"
end

perfect_squares(nums)

# Using any?, verify that the range of integers from 1 to 5 does
# include at least one odd number

(1..5).any? do |i|
  i % 2 != 0
end

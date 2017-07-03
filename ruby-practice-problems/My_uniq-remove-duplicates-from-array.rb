#Write your own uniq method called my_uniq; it should take in an Array and return a new
#array. It should not call uniq.

def remove_duplicates(array)
  uniq_array = []
  array.each {|value| uniq_array << value unless uniq_array.include?(value) }
  return uniq_array
end

remove_duplicates([1, 2, 3, 3, 1, 2, 4, 5, 7])


#Adding to class array

class Array
  def my_uniq
      uniq_array = []
      self.each {|x| uniq_array << x unless uniq_array.include?(x) }
      uniq_array
  end
end

numbers = [1, 2, 3, 3, 1, 2, 4, 5, 7]
numbers.my_uniq

=begin
In this exercise, I’d like you to write a method num_to_s(num, base), which will convert a number to a string in a different base. For instance, num_to_s(123, 10) == "123" and num_to_s(4, 2) == 100. It should work for bases up to 16 (hexadecimal).

You can also think of writing numbers in bases like this. 123 in base 10 = 110^2 + 210^1 + 3*10^0

8 in base 2 = 1000 = 2^3*1 + 2^2*0 + 2^1*0 + 2^0*0

6 in base 2 = 110 = 2^2*1 + 2^1*1 + 2^0*0

10 in base 3 = 101 = 1*3^2 + 0*3^1 + 1*3^0
=end

def num_to_s(num, base)

  return 0 if num == 0
  #Hash for digits and characters

  characters = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F']
  result = []
  division = 1

  while num >= division
    result << characters[(num/division) % base]
    division *= base
  end

  result.reverse.join("")
end

puts num_to_s(123, 10)
puts num_to_s(8, 2)
puts num_to_s(6, 2)
puts num_to_s(10, 3)
puts num_to_s(16, 2)

#Transpose a 2D matrix

def my_transpose(array)
  new_2d_array = []
  i = 0
    while i < array.length
        j = 0
        new_2d_array[i] = []
        while j < array.length
         new_2d_array[i] << array[j][i]
         j += 1
        end
    i += 1
    end
    return new_2d_array
end

matrix = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
puts "Original Matrix: #{matrix}"
puts "Transpose Matrix: #{my_transpose(matrix)}"

=begin
Hash offset

Martha has created a hash with letter symbols as keys to represent items that start with their keys. However, she realized everything is off by one letter.
=end

wrong_hash = {
  :a => "banana",
  :b => "cabbage",
  :c => "dental_floss",
  :d => "eel_sushi"

}

def new_hash (wrong_hash)
   result = {}
  wrong_hash.each do |key, value|
    result[value[0].to_sym] = value
  end
  return result
end

puts "Old Hash #{wrong_hash}"
puts "\n"
puts "New Hash #{new_hash(wrong_hash)}"

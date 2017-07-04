=begin
Set

Ruby provides a class named Set in its Standard Library. You can read all about it in the ruby-doc. Let’s make a set of methods that will manipulate a Hash as if it were a Set. Like so:

# Note these should be safe methods (no !)
set_add_el({}, :x) # => {:x => true}
set_add_el({:x => true}, :x) # => {:x => true} # This should automatically work if the first method worked
set_remove_el({:x => true}, :x) # => {}
set_list_els({:x => true, :y => true}) # => [:x, :y]
set_member?({:x => true}, :x) # => true
set_union({:x => true}, {:y => true}) # => {:x => true, :y => true}
set_intersection # I'm not going to tell you how the last two work
set_minus # Return all elements of the first array that are not in the second array, not vice versa
Note: true is just used as a placeholder value.

We could have defined a class named Set, and these methods would have been instance methods. We don’t define a new class here because I want you to see how you can do this with just methods, and hijack the Ruby Hash class to represent your set.
=end

puts "set_add_el"

def set_add_el(set, value)
  if set[value].nil?
    set[value] = true
  #  set << value (This adds the new value to the set
  end
  return set
end

puts set_add_el([1, 2, 3], 4)
puts "\n#################\n"

puts "set_remove_el"

def set_remove_el(set, value)
  unless set[value].nil?
    set.delete(value)
  end
return set
end

puts set_remove_el([1, 2, 3, 4], 3)

puts "\n#################\n"

puts "set_list_els"

def set_list_els(set1, set2)
  return set1
  return set2
end

puts "\n#################\n"

puts "set_member?({:x => true}, :x) # => true"

def set_member?(set, value)
    set.has_key?(value) ? true : false
  end

puts "\n#################\n"
puts "set_union({:x => true}, {:y => true}) # => {:x => true, :y => true}"

def set_union(set1, set2)
  return set1.merge(set2)
end

set1 = { a: 1, b: 2, c: 3}
set2 = { d: 4, e: 5, f: 6}
set_union(set1,set2)

puts "\n#################\n"
puts "set_intersection"

def set_intersection(set1, set2)
  return  set1.keep_if { |key, value| set2.has_key?(key) }
end

set1 = { a: 1, b: 2, c: 3}
set2 = { b: 2, c: 3, d: 4}

set_intersection(set1, set2)

puts "\n#################\n"
puts "set_minus"

def set_minus(set1, set2)
  return set1.delete_if { |key, value| set2.has_key?(key) }
end

set1 = { a: 1, b: 2, c: 3}
set2 = { b: 2, c: 3, d: 4}

set_minus(set1, set2)

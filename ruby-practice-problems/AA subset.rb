#Subset
#Combination enumerable
def subsets(array)
  subset_array = []

    for idx in 0..(array.length) do
      subset_array += array.combination(idx).to_a #.combination(idx) returns all combinations of length idx of elements from the array
    end

subset_array
end

puts %q{subsets(["a", "b", "c"]) == [[], ["a"], ["b"], ["c"], ["a", "b"], ["a", "c"], ["b", "c"], ["a", "b", "c"]] is: } + (subsets(["a", "b", "c"]) == [[], ["a"], ["b"], ["c"], ["a", "b"], ["a", "c"], ["b", "c"], ["a", "b", "c"]]).to_s

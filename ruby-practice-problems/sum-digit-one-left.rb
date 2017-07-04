# Write a method, `digital_root(num)`. It should Sum the digits of a
# positive integer. If it is greater than 10, sum the digits of the
# resulting number.  Keep repeating until there is only one digit in
# the result, called the "digital root". **Do not use string
# conversion within your method.**
#
# You may wish to use a helper function, `digital_root_step(num)`
# which performs one step of the process.
#describe "#digital_root" do
#  it "works for a single digit" do
#    digital_root(9).should == 9
#  end
#
#  it "works for a longer number" do
#    digital_root(4322).should == 2
#  end
#end


def digital_root(num)
    until num < 10
        num = digital_root_step(num)
    end
    num
end

def digital_root_step(num)
  digits = []
  array_sum = 0

  #Lets dump the number into an array

  until num == 0
    digits << num % 10
    num /= 10
  end

  digits.each do |value|
    array_sum += value
  end

    array_sum
end

puts digital_root(12345)

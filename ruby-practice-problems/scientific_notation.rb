# Write a method `sci_not(num) that converts a positive number > 1
# into scientific notation rounded to 2 decimal places
# (e.g. `sci_not(234.5) == "2.35E2"` (use "E" instead of "10^")).
#
#describe "#sci_not" do
#  it "should convert a single-digit int" do
#    sci_not(3).should == "3.00E0"
#  end
#
#  it "should convert a simple integer" do
#    sci_not(11).should == "1.10E1"
#  end
#
#  it "should convert an integer" do
#    sci_not(12345).should == "1.23E4"
#  end
#
#  it "should convert a round-up situation" do
#    sci_not(1249).should == "1.25E3"
# end
#end

def sci_not(num)

  return "#{num}.00E0" if num < 10

  num_str = num.to_s
  power = num_str.length - 1 #Calculates the exponential

  digi_float = num / (10**power).to_f
  two_deci = digi_float.round(2).to_s #Rounds of the number to 2 decimal

  two_deci[2].nil? ? tenth_place = 0 : tenth_place = two_deci[2]
  two_deci[3].nil? ? unit_place = 0 : unit_place = two_deci[3]


  puts "#{num_str[0]}.#{tenth_place}#{unit_place}E#{power.to_s}"  #Final desired output

end

puts sci_not(3)
puts sci_not(12345)
puts sci_not(1249)
puts sci_not(11)

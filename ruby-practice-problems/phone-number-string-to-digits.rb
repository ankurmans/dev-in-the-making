# Found question from Best of Ruby Quiz - modified and created the following.

# Library to convert letters to phone numbers

@phone = { "A" => 2, "B" => 2, "C" => 2, "D" => 3, "E" => 3, "F" => 3, "G" => 4,
  				"H" => 4, "I" => 4, "J" => 5, "K" => 5, "L" => 5, "M" => 6, "N" => 6,
					"O" => 6, "P" => 7, "Q" => 7, "R" => 7, "S" => 7, "T" => 8, "U" => 8,
					"V" => 8, "W" => 9, "X" => 9, "Y" => 9, "Z" => 9
}


def phone_number_converter(input_string)

	# convert input string into array
	num_to_convert = input_string.split("")
	converted_num = []

	num_to_convert.each do |num|
		if (num == "-") || (num == " ") || (num.scan(/[A-Z]/).empty?)
			converted_num << num
		else
			@phone.each do |key, value|
				converted_num << value.to_s if num == key
			end
		end
	end
	converted_num.join
end

puts phone_number_converter(" 513-ANKURAM SHRESHTA")

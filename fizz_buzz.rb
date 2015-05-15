def fizz_buzz start, finish, rules 
	(start..finish).each do |number|
		result = use_rule number, rules

		if !result.empty? 
			puts result 
		else
			puts number
		end 
	end 
end 
{3 => 'Fizz', 5 => 'Buzz', 7 => 'Woof'}


def use_rule number, rules 
	result = ""
	rules.each do |key, value|
		if are_divisible? number, key 
			result << value
		end 
	end 

def are_divisible? number_a, number_b
	number_a % number_b == 0
end


	result 
end 

fizz_buzz 1, 30, {3 => 'Fizz', 5 => 'Buzz', 7 => 'Woof'}

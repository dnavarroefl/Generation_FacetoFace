def NumberEncoding(str)

	 alpha = ['a'..'z'].to_a
	 
	 result = ''

	str.each_char do |letter|
	found = false
	#alpha.index(letter) to replace while loop

	index = 0 
	while found == false && index < 26 do 
	if (letter == alpha[index])
		result = result + (index+1).to_s
		found = true
	end 
	index = index +1
	end 

	if (found == false)
	result = result + letter 
	end 

	puts result
	#return result
	end 
end 

NumberEncoding('hello 45')  == '85121215 45'
NumberEncoding('jaj-a')  == '10110-1'
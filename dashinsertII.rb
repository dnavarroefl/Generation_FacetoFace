def DashInsertII(num)

		array_num = num.split("")
	  	cute_string = ""
	  	cute_string.concat(array_num.first)

	  	final_iteration = (array_num.size) -2
	  	
	  	for i in 0..final_iteration
	  	current_element = array_num[i]
	    next_element = array_num[i+1]
	    
	    if even_numbers? current_element, next_element
	    	cute.string.concat "*"
	    	cute_string.concat
	    	next_element
	    end

	    if odd_numbers? current_element, next_element
	    	cute.string.concat "-"
	    	cute_string.concat
	    	next_element
	    end

	    if even_and_odd_numbers? current_element, next_element
	    cute_string.concat
	    next_element
	end
end 

	cute_string
end 

def even_and_odd_numbers? current_element, next_element
	current_element.to_i % 2 !=
	next_element.to_i % 2 
end 

def even_numbers? current_element, next_element
	current_element.to_i.even? &&
	next_element.to_i.even?
end

def odd_numbers? current_element, next_element
	current_element.to_i.odd? && next_element.to_i.odd?
end
     
puts DashInsertII(99946)  == “9-9-94*6”
puts DashInsertII(56647304 ) == “56*6*47-304”

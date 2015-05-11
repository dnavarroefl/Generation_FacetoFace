
  def PalindromeTwo str

    	str = str.gsub(/\W+/, '')
    end

    LetterArray = str.split(//)
      
    LetterArray each do |letter|
    letter.downcase!
    end 
    
    LetterReverseArray = LetterArray.reverse
  	
    LetterArray.each do |letter|
      LetterReverseArrayIndex = 0
      FoundLetter = false

      while LetterReverseArrayIndex < LetterReverseArray.length && !FoundLetter do 
        if letter.eql?
          LetterReverseArray[LetterReverseArrayIndex]

          FoundLetter = true 
          print letter 
        end

    LetterReverseArrayIndex += 1
    end 
  
  puts ''
  end   
end 

PalindromeTwo("Noel - sees Leon")  == true
PalindromeTwo("A war at Tarawa!")  == true



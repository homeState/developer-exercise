class Exercise

  
  
  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    nextNumber = 0
    evenSum = 0
    number = 1
    lookBack = 0
    $i=1 
    while $i < nth
    	  nextNumber = lookBack + number
	  if nextNumber%2 == 0
             evenSum += nextNumber
	  end
	  lookBack = number
	  number = nextNumber
	  $i+=1
    end
    return evenSum   
  end
  
  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
       # TODO: Implement this method	
       outString = ""
       indexFirst = ""
       indexLast = ""
       word = ""
       attachLast = 0
       $i=0
       inStr = str.split(/\s+/)
       inStrLength = inStr.length
       while $i < inStrLength
       	     word = inStr[$i]
       	     indexLast = word.chars.last
	     indexFirst = word.chars.first
	     indexLength = word.length
	     if indexLast.match(/[[:punct:]]/)
	     	word = inStr[$i].chomp(indexLast)
		indexLength = word.length
		attachLast = 1
	     end
	     if indexLength > 4
	     	indexFirstCompare = indexFirst.upcase
	     	if indexFirst == indexFirstCompare
		   word = "Marklar"
		else
		   word = "marklar"
		end
	     end 
	     outString.concat(word)
	     if attachLast == 1
	     	outString.concat(indexLast)
		attachLast = 0
	     end
	     if $i+1 < inStrLength
	     	outString.concat(" ")
             end
	     $i+=1
       end 
       return outString
  end
 
end

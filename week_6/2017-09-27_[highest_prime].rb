def is_prime?(int)
test = 2 
  while test < int
    if int%test == 0 
      return false
    else 
      test += 1
    end  
  end 
  true
end  

def highest_prime_number_under(number)
  prime = nil
  count = 2
  while count < number 
    if is_prime?(count)
      prime = count
    end
    count += 1
  end
  prime
end  


p highest_prime_number_under(10)  #=> 7
p highest_prime_number_under(11)  #=> 7
p highest_prime_number_under(12)  #=> 11
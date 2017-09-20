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

p is_prime?(10)  #=> false
p is_prime?(11)   #=> true
p is_prime?(12)   #=> false
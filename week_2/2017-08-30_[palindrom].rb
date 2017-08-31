def palindrome?(string)
  if string.downcase == string.downcase.reverse
    return true 
  else
    return false
  end
end

palindrome?("racecar")
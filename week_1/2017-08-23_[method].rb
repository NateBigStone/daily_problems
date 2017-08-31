def reverse_a_string(str)
  str_new = ""
  var = (str.length-1)
  str.length.times do
    str_new = str_new + str[var]
    var = var - 1
  end
  return str_new 
end 
p reverse_a_string("abcde")  #=> "edcba"
def find_missing_letter(str)
 string_array = str.split("")
 missing_letter = nil
 var = 0 
 (string_array.length - 1).times do
  missing_letter = (string_array[var].ord + 1).chr if string_array[var].ord + 1 != string_array[var +1].ord
    var += 1
  end
  return missing_letter
end

p find_missing_letter("opqrsuv")  #=> "t"
p find_missing_letter("xyz")      #=> nil
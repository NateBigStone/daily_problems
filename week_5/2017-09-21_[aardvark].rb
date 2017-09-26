def find_the_most_letter_a(array)
  alphabet_hash = {}
  array.each do |element|
    alphabet_hash[element] = 0
    element.split("").each do |splut|
      if splut.downcase == "a"
        alphabet_hash[element] += 1
      end 
    end
  end
  return alphabet_hash.sort_by{|key, value| value}.last[0]
end

p find_the_most_letter_a(["alphabet", "aardvark", "anarchy"])  #=> "aardvark"
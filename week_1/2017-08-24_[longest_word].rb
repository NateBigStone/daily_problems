def find_longest_word(phrase)
  phrase.delete! ".,!?()$"
  longest_length = 0 
  longest_word = ""
  ph_array = phrase.split(" ")
  ph_array.each do |word|
    if word.length > longest_length
      longest_word = word
      longest_length = word.length
    end
  end  
  return longest_word 
end


p find_longest_word("What is the longest word in this phrase?")  #=> "longest"
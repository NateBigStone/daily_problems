
def mutation?(second_word,first_word)
  first_array = first_word.split("")
  second_array = second_word.split("")
  first_array.each do |letter|
    if second_array.include?(letter)
    else
      return false
    end
  end
  return true
end





p mutation?("burly", "ruby")    #=> true
p mutation?("burly", "python")  #=> false
# # Task 1 : Comment the code
# # Write your comments on what each thing is doing.
# # If you have difficulty, go into IRB and play with the methods.

# def decoded_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs. This turns the message into an array of its letters
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash. You could have an array of the alphabet and using a number variable to change the index to grab a different character
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes? The con is that it was all typed out. The pro is that it's not obviously reversable
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # What is #each doing here? Inspecting each value in the array
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? If this is isnt switched to true the character gets added as-is
#     cipher.each_key do |y| # What is #each_key doing here? Comparing the cypher key to the original message
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? Y is from the Hash. X is from the original message
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? Breaking here because that character has been changed
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? it's puting an empty space in place of these special characters
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? it makes an array of the numbers 0 through 9
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? its looking to see if that character had an instruction to change it. if not, by default it just adds it as-is.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")

#   return decoded_sentence # What is this returning? this joins together the array and returns an encoded sentence. 
# end

# puts "Decoding messages..."
# puts decoded_cipher("fi%wyvi%xs^hvmro^csyv#szepxmri")
# puts decoded_cipher("asa,&csy^qywx#lezi^er@eajyp^psx$sj%jvii#xmqi&sr#csyv*lerhw!")
# puts decoded_cipher("xs*amr@xli%keqi,#csy@qywx#ompp&qi,&nslr#vsqivs.")
# puts decoded_cipher("izivcfshc*ks@xs*gsppiki,#wxyhc*levh,%wxyhc#levh.")
# puts decoded_cipher("ai@mrxirh^xs%fikmr&sr*xli&jmvwx^sj^jifvyevc@yrviwxvmgxih&wyfqevmri%aevjevi.")
# puts 

# Task 3: Refactor the initial solution (rewrite the code in a shorter, dry, easy to read solution without breaking the tests)

def decoded_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  cipher = ("a".."z").to_a
  input.each do |letter|
    index_var = cipher.index(letter)
      if letter == "@" || letter == "#" || letter == "$" || letter == "%"|| letter == "^" || letter == "&"|| letter =="*"
        decoded_sentence << " "
      elsif index_var == nil 
        decoded_sentence << letter
      elsif  index_var > 3
        decoded_sentence << cipher[index_var -4]
      elsif index_var < 4 
        decoded_sentence << cipher[index_var + 22]
      end  
    end
  decoded_sentence = decoded_sentence.join("")
  return decoded_sentence
end

# DRIVER TESTS GO BELOW THIS LINE
puts "Running tests for `decoded_cipher`..."
puts decoded_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true

# Task 2: Write additional tests
# Create more driver test code based on the decoded messages. Driver test code statements should always return "true."
puts decoded_cipher("lettc%pefsv&hec!") == "happy labor day!"
puts
puts "Finished running tests."

puts "Decoding messages..."
decoded_cipher("fi%wyvi%xs^hvmro^csyv#szepxmri")
puts decoded_cipher("asa,&csy^qywx#lezi^er@eajyp^psx$sj%jvii#xmqi&sr#csyv*lerhw!")
puts decoded_cipher("xs*amr@xli%keqi,#csy@qywx#ompp&qi,&nslr#vsqivs.")
puts decoded_cipher("izivcfshc*ks@xs*gsppiki,#wxyhc*levh,%wxyhc#levh.")
puts decoded_cipher("ai@mrxirh^xs%fikmr&sr*xli&jmvwx^sj^jifvyevc@yrviwxvmgxih&wyfqevmri%aevjevi.")
puts 
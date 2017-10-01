
def is_balanced?(string)
  transform = {"{"=>"}","}"=>"{","["=>"]","]"=>"[","("=>")",")"=>"(",}
  reversed_string = ""
  string.split("").each do |character|
    transform.each do |key, value|
      if character == key
        reversed_string += value
      end
    end
  end
  if string.reverse == reversed_string
    return true
  else
    false
  end
end

p is_balanced?("{[()]}") #=> true
p is_balanced?("{[([)]]}") #=> false


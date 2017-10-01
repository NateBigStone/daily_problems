transform = [["{","}"],["[","]"],["(",")"]]
def is_balanced?(string)
  p string
  p string.reverse.gsub("{","}").gsub("[","]").gsub("(",")")
  if string.reverse == string
    return true
  else
    false
  end
end

p is_balanced?("{[()]}") #=> true
p is_balanced?("{[([)]]}") #=> false


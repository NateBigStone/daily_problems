numbers = [1, 2, 4, 2]
even_numbers = numbers.select { |num|  num.even?  }
p even_numbers
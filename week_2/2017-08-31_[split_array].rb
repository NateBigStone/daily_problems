def split_array(array, size)
  index = 0
  new_array = []
  (array.length/size).times do
    baby_array=[]
    size.times do
      baby_array << array[index]
      index +=1
    end
    new_array << baby_array
  end
  return new_array
end
    
p split_array([0, 1, 2, 3, 4, 5], 2)  #=> [[0, 1], [2, 3], [4, 5]]
p split_array([0, 1, 2, 3, 4, 5], 3)  #=> [[0, 1, 2], [3, 4, 5]]
array_of_numbers = [9,2,8,3,1,7,4,6,5]
p array_of_numbers.reduce{ |memo,num| memo > num ? num : memo }
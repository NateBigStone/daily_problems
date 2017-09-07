def sum_of_range(nums)
  nums.sort!
  return (nums[0]..nums[1]).reduce(:+)
end
p sum_of_range([1, 4])  #=> 10
p sum_of_range([4, 1])  #=> 10
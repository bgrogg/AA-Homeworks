def add_numbers(nums_array)
  return nums_array.first if nums_array.length <= 1

  nums_array.pop + add_numbers(nums_array)
end

# Test Cases
puts add_numbers([1, 2, 3, 4]) == 10
puts add_numbers([3]) == 3
puts add_numbers([-80, 34, 7]) == -39
puts add_numbers([]) == nil

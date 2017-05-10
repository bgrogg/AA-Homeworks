def gamma_function(n)
  return nil if n < 1
  return 1 if n == 1

  (n - 1) * gamma_function(n - 1)
end

# Test Cases
puts gamma_function(0) == nil
puts gamma_function(1) == 1
puts gamma_function(4) == 6
puts gamma_function(8) == 5040

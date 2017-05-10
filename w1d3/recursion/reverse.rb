def reverse(string)
  return "" if string.empty?

  reverse(string[1..-1]) + string[0]
end

# Test Cases
puts reverse("house") == "esuoh"
puts reverse("dog") == "god"
puts reverse("atom") == "mota"
puts reverse("q") == "q"
puts reverse("id") == "di"
puts reverse("") == ""

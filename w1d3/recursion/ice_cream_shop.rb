def ice_cream_shop(flavors, favorite)
  return false if flavors.empty?
  return true if flavors.pop == favorite

  ice_cream_shop(flavors, favorite)
end

# Test Cases
puts ice_cream_shop(['vanilla', 'strawberry'], 'blue moon') == false
puts ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea') == true
puts ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio') == false
puts ice_cream_shop(['moose tracks'], 'moose tracks') == true
puts ice_cream_shop([], 'honey lavender') == false

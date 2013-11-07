def alphabetize(arr, rev=false)
if rev==true
    arr.sort! { |item1, item2| item2 <=> item1
    }
else
    arr.sort! { |item1, item2| item1 <=> item2
    }
end
end

family = ["marc", "cindy", "rob", "maria", "trey", "matt", "medina"]

puts alphabetize(family, true)

=begin	
family = ["marc", "cindy", "rob", "maria", "trey", "matt", "medina"].alphabetize(arr)

puts family
=end
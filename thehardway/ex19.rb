def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "You have #{cheese_count} cheeses!"
	puts "You have #{boxes_of_crackers} boxes of crackers!"
	puts "Man that's enough for a party!"
	puts "Get a blanket."
	puts # a blank line
end

# def put_away(stored_items = Hash.new)
# 	stored_items.each do |type, name|
# 		puts "#{type} - #{name}\n"
# 	end
# end

def put_away( var )
    print "got: ", var.inspect
end

put_away :dessert => "ice cream", :dessert => "donuts"

#	container = Hash.new
#	container[item.to_sym] = total.to_i
#	container.each [ |item, total|
#		puts "There are #{total} #{total}s in #{container}."
#	]
#end
	
#put_away("freezer", "ice cream sandwiches", 20)

=begin
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_crackers)

puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_crackers + 1000)
=end
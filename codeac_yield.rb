#yielding with a block
def double(parameter)
    puts "the method is in control right now"
    puts "what number should we double?"
    puts "yielding to the block"
    yield parameter
    puts "back to the method!"
    puts parameter * 2
end

double(5) { |parameter| 
    puts "in the block!"
}

#Procs
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Write your code below this line!

round_down = Proc.new { |n| n.floor }

# Write your code above this line!
ints = floats.collect(&round_down)

# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

over_4_feet = Proc.new do |height| 
	height >=4
end

puts group_1.select(&over_4_feet)
puts group_2.select(&over_4_feet)
puts group_3.select(&over_4_feet)	

#calling a proc using yield
def greeter
    puts "in the method"
    puts "yielding to block"
    yield
    puts "back in method"
end

phrase = Proc.new { puts "Hello there!" }

puts greeter(&phrase)

#combining procs, symbols and methods
# By mapping &:to_i over every element of strings, we turned each string into an integer! 
strings = ["1", "2", "3"]
nums = strings.map(&:to_i)
puts nums


#a method can have arguments. If it does, a method 'accepts' or 'expects' those arguments.
#after you 'def' and argument you call it by typing its name in
#a method is also called a function
#when you define a method the bit between the () is the 'parameter' (n) and when its called the bit is the argument (12)
#a splat argument is when you don't know how many arguments will be passed. It uses the * before the argument
#the return keyword returns the output to the method or computer. Its used in setting up a method

def greeter(name)
    return "hello " + name + " its nice to see you."
end

def by_three?(number)
    if number % 3 == 0
    	return true  
    else 
    	return false
    end
end

puts "what is your name?"
puts greeter(gets.chomp)

puts "type a number"
puts by_three?(gets.chomp.to_i)

fruits = ["orange", "apple", "banana", "pear", "grapes"]

fruits.sort! do |firstFruit, secondFruit|
    secondFruit <=> firstFruit
end

puts fruits

family = ["marc", "cindy", "rob", "maria", "trey", "matt", "medina"]

family.sort! do |firstPerson, secondPerson|
    if secondPerson < firstPerson
    	-1
    elsif secondPerson > firstPerson
    	1
    else
		0    	
    end
end

puts family
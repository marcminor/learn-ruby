# Type your Ruby code below!
brothers = ["matt", "trey", "marc"]

puts "Type the first name of a Minor brother."
name = gets.chomp()
puts "You nailed it. \"#{name}\" is a Minor brother!" if brothers.include?(name) == true
puts "Nope. \"#{name}\" is not a Minor brother." if brothers.include?(name) == false

# Type your Ruby code below!
puts "How many Minor brothers are there?"
total_brothers = gets.chomp()
puts "nope that's wrong. Try again." unless total_brothers.to_i == brothers.count
puts "yup that's correct! There are #{total_brothers} Minor brothers." if total_brothers.to_i == brothers.count

# Type your Ruby code below!
parents = ["Rob", "Cindy"]

puts "Type the first name of one of the Minor parents."
parent_name = gets.chomp()
puts parents.include?(parent_name) ? "Yup! \"#{parent_name}\" is a Minor parent." : "Nope! \"#{parent_name}\" is not a Minor parent."

puts "Hello there!"
greeting = gets.chomp

# Add your case statement below!
case greeting
 when "English" then puts "Hello!"
 when "French" then puts "Bonjour!"
 when "German" then puts "Guten Tag!"
 when "Finnish" then puts "Haloo!"
 else puts "I don't know that language!"
end


def a
  puts "A was evaluated!"
  return true
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "------"
puts a && b


#concatenation operator as replacement for .push method and += combined operator
alphabet = ["a", "b", "c"]
alphabet << "d" # Update me!
puts alphabet

caption = "A giraffe surrounded by " << "weezards!" # Me, too!
puts caption

#practicing the conditional assignment operator

puts "what's the name of your favorite animal?"
animal_name = gets.chomp()
favorite_animal ||= animal_name
puts favorite_animal
favorite_animal ||= "albatross"
puts favorite_animal

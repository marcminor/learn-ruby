=begin
Feature: Password change error handling
    In order to avoid multiple attempts at changing my password
    As an existing user
    I want to be told what I did wrong when I enter the wrong password

Scenario
    Given I have entered a new password as a string 
    And I meet the requirements that it contain at least six characters
    When I hit enter
    Then I should be told my password was saved
=end
=begin
prompt = "> "
puts "Please enter your new password. At least six characters are required. "
password = gets.chomp
print prompt

while password.length < 6
	    puts "Your password should be at least 6 characters. Try again."
	    password = gets.chomp
	    print prompt
end

if password.length >= 6
	    puts "Congrats your password was saved."
end

#### new script testing unless

puts "Give me a positive number. "
print prompt
my_num = gets.chomp()

unless my_num.to_i > 1
    puts "sorry that is not a positive number."
    print prompt
    my_num = gets.chomp()
end

if my_num.to_i > 1
    puts "Good stuff. That's a positive number."
end

##### new script
print "Write a string for me please. "
user_input = gets.chomp

if user_input == ""
    print "Write a string for me please. "
    user_input = gets.chomp
end

user_input.downcase

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
end


if user_input.include? "cy"
	user_input.gsub!(/cy/, "thigh")
end

if user_input.include? "ci"
	user_input.gsub!(/ci/, "thi")    
end

puts "Here is what you're left with: #{user_input}"

#####new script

counter = 0

loop do
    counter += 1
    print "Ruby!"
    break if counter > 30
end

####new script
prompt = "> "
puts "Write some text: "
print prompt
text = gets.chomp
puts "What words should be redacted? Separate with a comma."
print prompt
redact = gets.chomp

text.downcase!
redact.downcase!

redact_words = redact.split(",")
words = text.split(" ")

words.each do |word|
    if word != redact
        print word + " "
    else
        print "REDACTED "
end
end
=end
my_hash = Hash.new
my_hash["hightops"] = "men's"
my_hash["flats"] = "women's"
my_hash["heels"] = "women's"

print my_hash
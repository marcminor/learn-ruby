prompt = "> "

puts "What's your first name? "
print prompt
first_name = gets.chomp

puts "What's your last name? "
print prompt
last_name = gets.chomp

puts "What's your city? "
print prompt
city = gets.chomp

puts "What's your state? (eg. NC)"
print prompt
state = gets.chomp

puts "Hi #{first_name} #{last_name}! \nWe're glad you came here all the way from #{city}, #{state.upcase}!"
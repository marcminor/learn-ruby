age_req = 18
prompt = "> "

puts "What's your first name? "
print prompt
first_name = gets.chomp

puts "What's your last name? "
print prompt
last_name = gets.chomp

puts "How old are you? "
print prompt
age = gets.chomp().to_i

if age > age_req
    puts "Congratulations #{first_name.capitalize} #{last_name.capitalize}. Since you are over the age of #{age_req} you can continue."
else
    puts "Sorry #{first_name.capitalize} #{last_name.capitalize}, you are younger than we allow. You have to ask your mommy to continue."
end
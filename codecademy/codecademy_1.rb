my_num = 23 % 4
result = "#{my_num} is the remainder of 23 divided by 4"

puts "I would like for you to know that #{result}."
puts "That's about all I've got to say."

puts

name = "Marc Minor"

puts "if my name weren't a proper noun it'd look like this \"#{name.downcase}\" but if it were on an official form or something for the government it'd look like this \"#{name.upcase}\"."

=begin
I need to take in a name and return the length
That's what this code is about
=end

puts "What's your first name?"
firstname = gets.chomp()
puts "What's your last name?"
lastname = gets.chomp()

puts "hello #{firstname+lastname}."
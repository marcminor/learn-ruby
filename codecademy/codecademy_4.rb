puts "Are you hungry? "
hungry = gets.chomp()
if hungry == "yes"
	hungry = true
else
	hungry = false
end

unless hungry == true
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end
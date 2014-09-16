one, two, three = ARGV

puts "This script is called #{$0}"
puts "First variable #{one}"
puts "Second variable: #{two}"
puts "Third variable: #{three}"
puts "Write some stuff now."
four = STDIN.gets.chomp()
print "Here is what you wrote: #{four}"

puts

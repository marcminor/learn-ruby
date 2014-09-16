require_relative 'test_library'

test = TestClass.new
puts "What do you want to do? (Update, Copy or Delete?)"
choice = gets.chomp()
choice.downcase!

case choice
when "update"
	test.WriteFile
when "copy"
	test.CopyFile
when "delete"
	test.EraseFile
else
	puts "Sorry, that's not an option. Try again."
end


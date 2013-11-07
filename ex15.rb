#sets the local variable 'filename' to be the first argument variable
filename = ARGV.first

#sets a local variable as a string
prompt = "> "
#sets a local variable 'txt' as a file 'filename' that has had the open method called on it
txt = File.open(filename)

#outputs a string containing the filename variable
puts "Here's your file: #{filename}"
#outputs the result of the 'read' method being called on the 'txt' variable which is a file
puts txt.read()

#outputs a string
puts "I'll also ask you to type it again:"
#outputs the prompt variable
print prompt
#gets user input and sets it as the 'file_again' variable
file_again = STDIN.gets.chomp()

#'file_again' variable is understood as a file and is set to the 'txt_again' variable
txt_again = File.open(file_again)

#outputs the results of the 'read' method being called on the 'txt_again' file
puts txt_again.read()

txt.close()
txt_again.close()

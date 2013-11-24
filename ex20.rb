#accept a command line argument variable and set the local variable 'input_file' to it
input_file = ARGV[0]

#define the print_all method with the argument f. 
def print_all(f)
#execute the read method on f. read requires f to be a file
	puts f.read()
end

#define method with argument f
def rewind(f)
#call seek method on f. Seek to the absolute position indicated in the first parameter '0'
	f.seek(0, IO::SEEK_SET)
end

#define method with two arguments
def print_a_line(line_count, f)
#display line_count variable and result of readline method called on f variable
#readline prints the current line if no line number is passed as a parameter
#and then it sets the current line as the next line up
	puts "#{line_count} #{f.readline()}"
end

#variable set to the result of the open method called on the file
current_file = File.open(input_file)

puts "First let's print the whole file:"
puts # a blank line_count

print_all(current_file)

puts "Now let's rewind, kind of like a tape."

rewind(current_file)

puts "now I'll print one line at a time"
puts current_file.readline()
puts current_file.readline()
puts current_file.readline()

puts "Now let's rewind, kind of like a tape."

rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)


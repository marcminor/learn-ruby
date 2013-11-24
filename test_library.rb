class TestClass
	def WriteFile
		puts "What file do you want to write to?"
		filename = STDIN.gets.chomp()

		until File.exist?(filename) == true 
			puts "Sorry that file doesn't exist. Try again."
			filename = gets.chomp()
		end

		new_file = File.open(filename, 'r+')
		puts "Cool. Here are the current contents: \n#{new_file.read}"

		puts "Do you want to erase it first?"
		answer = gets.chomp()
		new_file.truncate(0) if answer == "yes"

		puts "What should go in the file?"
		print "Line 1: "; input_txt_1 = STDIN.gets.chomp()
		print "Line 2: "; input_txt_2 = STDIN.gets.chomp()
		print "Line 3: "; input_txt_3 = STDIN.gets.chomp()

		new_file.write("#{input_txt_1}\n#{input_txt_2}\n#{input_txt_3}")
		puts "Awesome! You're done!"
		new_file.close()
	end
	
	def CopyFile
		puts "What is the source file for this copy?"
		from_file = STDIN.gets.chomp()
		puts "What file should the contents be copied into?"
		to_file = STDIN.gets.chomp()

		puts "Got it! The contents of #{from_file} will be copied into #{to_file}!"
		input = File.open(from_file).read()
		output = File.open(to_file, 'r+').write(input)
		puts "Done!"
		output_txt = File.open(to_file, 'r+')

		puts "Here is the new contents of #{to_file}:\n#{output_txt.read}."
	end

	def EraseFile
		puts "Do you want to erase a file? (yes or no)"
		answer = gets.chomp()
		
		case answer
			when "yes"
				puts "Alright! Which file will get erased?"
				file_to_erase = gets.chomp() 
				
				until File.exist?(file_to_erase) == true 
					puts "Sorry that file doesn't exist. Try again."
					file_to_erase = gets.chomp()
				end

				puts "Got it! We are now erasing."

				File.open(file_to_erase, 'w')
				File.truncate(file_to_erase, 0)

				puts "Done! This file is erased."
			when "no"
				puts "Okay no problem. We won't mess with your files."
			else
				puts "sorry that's not an option. Try again."
		end
	end

end


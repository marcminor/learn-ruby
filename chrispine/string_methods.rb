
/LEARNING SOME NEW METHODS/
/GETS means get string. so its the opposite of PUTS/
#~ puts 'Hello there, and what\'s your name?'
#~ name = gets 
#~ puts 'Your name is ' + name + '? What a lovely name!'
#~ puts 'Pleased to meet you, ' + name + '. :)'
#~ puts ''

/CHOMP removes any enters at the end of a string/

#~ puts 'Hello there, and what\'s your name?'
#~ name = gets.chomp 
#~ puts ''
#~ puts 'Your name is ' + name + '? What a lovely name!'
#~ puts 'Pleased to meet you. :)'

/If a method is included with object variable then I don't need to repeat it in local variables/

#~ puts ''

/Write a program asking for first name, then middle, then last. Finally, greet the person with the full name/
#~ puts 'Hi there, let\'s get that name out of you, piece by piece.'
#~ puts 'What\'s your first name?'
#~ first_name = gets.chomp
#~ puts ''
#~ puts 'What\'s your middle name?'
#~ middle_name = gets.chomp
#~ puts ''
#~ puts 'What\'s your last name?'
#~ last_name = gets.chomp
#~ puts ''
#~ name = first_name+ ' ' + middle_name+ ' ' + last_name
#~ puts 'Oh! So your name is ' + name + '!'
#~ puts 'What a crazy name!'

/Ask for favorite number. Add 1 and suggest the result as a bigger and better number./
#~ puts 'Alright ' + name + ', I\'d love to know what your favorite number is. Will you tell me?'
#~ favnum = gets.chomp
#~ puts favnum + '? Hmmm... Are you sure ' + favnum + ' is your choice?'
#~ puts 'Try telling me one more time what your favorite number is.'
#~ favnum2 = gets.chomp
#~ puts 'haha! seriously!? well whatever ' + name + '. ' + favnum2 + ' still sucks. ' + (favnum2.to_i+1).to_s + ' is way better.'

/adding strings and integers/
#~ my_birth_month = 'July'
#~ my_birth_day = 14
#~ puts my_birth_month + ' ' + my_birth_day.to_s 

/methods are behaviors of objects. sometimes its hard to know what object you're in. The way to check is with 'self'. /
/Learning some more new methods. Methods do stuff. Objects contain methods. You call methods. The main object represents the whole program./
/SELF method says the object that you're in/
#~ puts self 

/learning some string methods/
#~ var1 = 'stop'
#~ var2 = 'deliver repaid desserts'
#~ var3 = 'Can you pronounce this sentence backward?'

/REVERSE returns a reversed version of the string./
#~ puts var1.reverse
#~ puts var2.reverse
#~ puts var3.reverse
#~ puts var1
#~ puts var2
#~ puts var3

#~ puts ''

/LENGTH returns the number of characters in a string. It returns an integer./
#~ puts 'Hello! What is your full name?'
#~ name = gets.chomp
#~ puts 'Did you know there are ' + name.length.to_s + ' characters in your name, ' + name + '?'

#~ puts ''

#~ puts 'Hi there. I am going to ask for your name in three parts.'
#~ puts 'What is your first name?'
#~ first_name = gets.chomp
#~ puts 'What is your middle name?'
#~ middle_name = gets.chomp
#~ puts 'What is your last name?'
#~ last_name = gets.chomp
#~ puts 'Did you know there are ' + (first_name + '' + middle_name + '' + last_name).length.to_s + ' letters in your name, ' + first_name + '?'

/CAPITALIZE, SWAPCASE, UPCASE and DOWNCASE change the case of letters./
/These methods change the instant of the object, not the object itself, as shown by instantiating 'letters' last/
#~ letters = 'aAbBcCdDeE'
#~ puts letters.upcase
#~ puts letters.downcase
#~ puts letters.swapcase
#~ puts letters.capitalize
#~ puts ' a'.capitalize
#~ puts letters

/VISUAL FORMATTING methods/
/CENTER adds spaces to the beginning and end of the string to make it centered/
/CENTER requires a LINE_WIDTH variable/
#~ line_width = 50
#~ puts('Caught, covered and carefully carried,'.center(line_width))
#~ puts('The thief of my dreams appeared.'.center(line_width))
#~ puts('Can I carry this, a carriage for my fears?'.center(line_width))
#~ puts('How long will I remain a victim of inaction;'.center(line_width))
#~ puts('Paralyzed by thought; deprived of my satisfaction?'.center(line_width))

/LJUST stands for left justify and RJUST stands for right justify. These add padding to the string on the left of right side (center adds it to both sides)/
#~ line_width = 40
#~ str = '--> text <--'
#~ puts (str.ljust(line_width))
#~ puts (str.center(line_width))
#~ puts (str.rjust(line_width))
#~ puts (str.ljust(line_width/2) + str.rjust(line_width/2))

/My angry boss program to test visual formatting methods/
puts 'You said you wanted something? Well, ' + '...out with it already!'.upcase
wantvar = gets.chomp
puts ('You think you want ' + wantvar + '!? You\'re fired!').upcase

line_width = 13
puts 'Table of Contents'.center(line_width) 
puts ''
puts 'Chapter 1:'.ljust(line_width) + 'Getting Started'.ljust(line_width) + 'page 1'.rjust(23)
puts 'Chapter 2:'.ljust(line_width) + 'Numbers'.ljust(line_width) + 'page 9'.rjust(25)
puts 'Chapter 3:'.ljust(line_width) + 'Letters'.ljust(line_width) + 'page 13'.rjust(25)


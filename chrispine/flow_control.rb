/COMPARISON METHODS/
/GREATER THAN and LESS THAN methods are expressed with > and <. Equal to is with ==./
#~ puts 1 > 2
#~ puts 1 < 2
/Is not equal to is defined by !=/

#~ puts 'Give me a number.'
#~ number = gets.chomp
#~ if (20 > number.to_i)
  #~ then
  #~ puts 'That\'s definitely smaller than 20!'
#~ end
#~ if (20 < number.to_i)
  #~ then
  #~ puts 'That\'s WAY BIGGER than 20!'
#~ end
#~ if (20 == number.to_i)
  #~ then
  #~ puts 'You typed 20! That\'s what I was thinking too!'
#~ end

#~ puts ''

#~ puts 'Type 25'
#~ number2 = gets.chomp.to_i
#~ if (25 == number2)
  #~ then
  #~ puts 'Nice work. That is the correct number.'
#~ end

  #~ if (25 != number2)
  #~ then
  #~ puts 'Nope, that is NOT 25. Follow directions next time.'
#~ end

/Strings can get compared too. Ruby compares their lexicographical ordering. Cat comes before dog. The problem is that caps come before lowercase in computers./
#~ puts 'cat' < 'dog'
#~ puts 'ant' < 'Zoo'
#~ puts 'ant' < 'Zoo'.downcase
#~ puts 2 < 10
#~ puts '2' < '10'

/BRANCHING/ 
#~ puts 'Hello, what\'s your name?'
#~ name = gets.chomp
#~ puts 'Hello, ' + name + '.'

#~ if name == 'Marc'
  #~ puts 'What a lovely name!'
#~ end

/IF in branching sets up the condition. ELSE is what the program does if the variable is false./
#~ puts 'I am a fortune-teller. Tell me your name.'
#~ name = gets.chomp

#~ if name == 'Marc'
  #~ puts 'I see great things in your future.'
  #~ else
    #~ puts 'Your future is...oh my! Look at the time!'
    #~ puts 'I really have to go, sorry!'
  #~ end
  
#~ puts 'Hello, and welcome to seventh grade English.'
#~ puts 'My name is Mrs. Gabbard. And your name is...?'
#~ name = gets.chomp

#~ if name == name.capitalize
  #~ puts 'Please take a seat, ' + name + '.'
  #~ else
    #~ puts name + '? You mean ' + name.capitalize + ', right?'
    #~ puts 'Don\'t you even know how to spell your name??'
    #~ reply = gets.chomp
    
    #~ if reply.downcase == 'yes'
      #~ puts 'Hmmph! Well, sit down!'
      #~ else
        #~ puts 'GET OUT!!'
      #~ end
    #~ end

#~ puts 'Say it now'
#~ it = gets.chomp
#~ if it.downcase > 'jambony'
  #~ puts 'Well good, that\'s further in the alphabet than j'
  #~ else
    #~ puts 'NO! That\'s less than j'
  #~ end
  
/It is strongly suggested to write all the required parts of a program when you write the main method/

puts 'What is 5+5?'
answer = gets.chomp
while answer.downcase != '10' || 'ten'
   puts 'try again'
answer = gets.chomp  
  end
if answer.downcase == '10' || 'ten'
  puts 'nice one'
  end


/LOOPING /
/Looping should only occur WHILE a certain condition is true./

#~ input = ''

#~ while input != 'bye'
  #~ puts input
  #~ input = gets.chomp
#~ end

#~ puts 'Come again soon!'


#~ puts 'Hello, what\'s your name?'
#~ name = gets.chomp
#~ puts 'Hello, ' + name + '.'

#~ if name == 'Marc'
  #~ puts 'What a lovely name!'
#~ else
  #~ if name == 'Katy'
    #~ puts 'What a lovely name!'
  #~ end
#~ end

/ELSIF means the same thing as else, if but it puts equal lines of code on equal lines/

#~ puts 'Hello, what\'s your name?'
#~ name = gets.chomp
#~ puts 'Hello, ' + name + '.'

#~ if name == 'Marc'
  #~ puts 'What a lovely name!'
#~ elsif name == 'Katy'
  #~ puts 'What a lovely name!'
#~ end

/DON'T REPEAT YOURSELF. I am duplicating code above. To fix that we use ||. || means or. || is a logical operator/

#~ puts 'Hello, what\'s your name?'
#~ name = gets.chomp
#~ puts 'Hello, ' + name + '.'

#~ if name == 'Marc' || name == 'Katy'
  #~ puts 'What a lovely name!'
#~ end

/Other LOGICAL OPERATORS- && (and) and !(not)/
i_am_chris = true
i_am_purple = false
i_like_beer = true
i_eat_rocks = false

puts i_am_chris   && i_like_beer
puts i_like_beer   && i_eat_rocks
puts i_am_purple && i_like_beer
puts i_am_purple && i_eat_rocks
puts
puts i_am_chris   || i_like_beer
puts i_like_beer   || i_eat_rocks
puts i_am_purple || i_like_beer
puts i_am_purple || i_eat_rocks
puts 
puts !i_am_purple 
puts !i_am_chris

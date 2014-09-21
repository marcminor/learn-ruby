/METHODS LEARNED HERE/
#PUTS, +, -, /, NAME, TO_S, TO_I, TO_F, **, %, RAND, SRAND
#MATH OBJECT
#:: is a scope operator


#~ puts 1+2  

#~ puts 'marc' + 'minor' * 2
#~ puts ('marc'+'minor')*2

/how many hours are in a year?/
#~ puts (365*24)
/how many minutes in a decade?/
#~ puts (8760*60)*10
/how many seconds old am I?/
#~ puts (((((365*25)+229)*24)*60)*60)
/how old is chris pine if he is 912 seconds?/
#~ puts ((((912000000.0/60.0)/60.0)/24.0)/365.0)

/learning how to escape a character/
#~ puts 'You\'re swell'
#~ puts 'You\'re swell'
#~ puts 'backslash at the end of a string: \\'
#~ puts 'up\\down'
#~ puts 'up\down'

/learning about assignment and variables. variables are names and assignment is creating a name for a string/
/the first letter of the names (variable) needs to be a lowercase letter/
#~ my_string = '...you can say that again...'
#~ puts my_string
#~ puts my_string

#~ name = 'Patricia Rosanna Jessica Mildred Oppenheimer'
#~ puts 'My name is ' + name + '.'
#~ puts 'Wow! ' + name + ' is a really long name!'

/reassign an object to a different variable/
#~ composer = 'Mozart'
#~ puts composer + ' was "da bomb" in his day.'

#~ composer = 'Beethoven'
#~ puts 'But I prefer ' + composer + ', personally.'

/variables can point to all objects, not just strings/
#~ my_own_var = 'just another ' + 'string'
#~ puts my_own_var

#~ my_own_var = 5 * (1+2)
#~ puts my_own_var

/variables can't point to other variables, just values/
#~ var1 = 8
#~ var2 = var1
#~ puts var1
#~ puts var2

#~ puts ''

#~ var1 = 'eight'
#~ puts var1
#~ puts var2

/so far I've seen integers, floats, and strings/
/integer/
#~ puts 1+2

/floats/
#~ puts 1.0+2.0

/strings/
#~ puts 'hi I am Marc'

/how to convert an integer to a string/
#~ var1 = 2
#~ var2 = '5'
#~ puts var1.to_s + var2
#~ puts var1 + var2.to_i

/.to_s converts to a string once, it does not reassign 2 to '2'. same for .to_i/

#~ puts ' 15' .to_f
#~ puts ' 99.999' .to_f
#~ puts ' 99.999' .to_i
#~ puts ''
#~ puts ' 5 is my favorite number!' .to_i
#~ puts ' Who asked you about 5 or whatever?' .to_i
#~ puts ' Your momma did.' .to_f
#~ puts ''
#~ puts ' stringy' .to_s
#~ puts 3.to_i

/integers always round floats down/
/puts is a method. it means put string/
/Its gets the string version of an object and then prints it/

#~ puts 20
#~ puts 20.to_s
#~ puts '20'

/this just showed us that yes indeed, 20 has been turned into a string unless I tell it to be an integer/

# /** is the EXPONENTIATION method. If I want to use exponents I just use the ** method./
# /% is the MODULUS method. This essentially does a division operation and spits back the remainder./

#~ puts 5**2
#~ puts 5**0.5
#~ puts 7/3
#~ puts 7%3
#~ puts 365%7
#~ puts 3%0.7

/ABS returns the absolute value of a number/
#~ puts (5-2).abs
#~ puts (2-5).abs

/RAND is ruby's random number generator. It generates a number between 0.0 and 1.0. You can give it a parameter and it will return a number between that and 0/
#~ puts rand
#~ puts rand
#~ puts rand
#~ puts (rand(100))
#~ puts (rand(100))
#~ puts (rand(100))
#~ puts (rand(1))
#~ puts (rand(1))
#~ puts (rand(1))
#~ puts (rand(999999999999999999999999999999999))
#~ puts ('the weatherman said there is a,')
#~ puts (rand(101).to_s + '% chance of rain, ')
#~ puts ('but you can never trust a weatherman.')

/If I want to return the same random numbers in the same sequence on separate occasions then I need to use SRAND to set the seed for the random numbers/
#~ srand 1976
#~ puts(rand(100))
#~ puts(rand(100))
#~ puts(rand(100))
#~ puts(rand(100))
#~ puts ''
#~ srand 1976
#~ puts(rand(100))
#~ puts(rand(100))
#~ puts(rand(100))
#~ puts(rand(100))

/The MATH object /
/MATH can call some predefined variables. PI and E are CONSTANTS. That's why the first letter is caps/
/PI is 3.14..., E is the constant used in logs or exponential equations/
puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)
puts(Math.sqrt(5)/2)
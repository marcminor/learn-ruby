/--RUBY BITS PART 2 - 2 - DYNAMIC CLASSES AND METHODS--/

# Tweet = Struct.new(:user, :status)
# The Struct class is another way in Ruby to create custom classes. Pass in the attribute accessors we want the class to have as parameters.
# Its a shorter way to write class Tweet

# Structs are best when the class is data-focused and not behavior-focused.

# alias_method :oldname, :newname
# alias_method is used to create a new version of a class. This is used to retain access to methods that are overridden. 

# What is a constant? 
# A variable that has a value

# Why use super in a method?
# To override the existing method with the original (superclass). This is similar to yield.

# define_method variable { block of code }
# define_method is used to dynamically create methods as needed. A good example of this is when status state has multiple behaviors (eg. posted, deleted, draft)

# .send(:methodname, [arguments]) or .send("methodname", [arguments]) or .methodname(arguments)
# send is used to call methods dynamically. It has access to private methods too. Public_send is the same as send but without access to private or protected methods.

# show_method = timeline.method(:show_tweet)
# show_method.call(0)
# The 'method' method. Method is an object as well. In this case, 'show_tweet' is the method being passed in as a parameter to the method object.

# (0..1).each(&method_object)
# & also changes the method object to a proc/block.


/-- 1- STRUCT--/
# class Game
#   attr_accessor :name, :year, :system

#   def initialize(name, year, system)
#     self.name = name
#     self.year = year
#     self.system = system
#   end
# end
/refactored to use struct/

# Game = Struct.new(:name, :year, :system)

/added method to_s/

# Game = Struct.new(:name, :year, :system) do
#   def to_s
#   	puts "Game name: #{:name} - Game year: #{:year} - Game system: #{:system}"
#   end
# end

/refactor to iterate the systems array and define_method to replace separate definitions of a single method/
# class Game
#   SYSTEMS = ['SNES', 'PS1', 'Genesis']

#   attr_accessor :name, :year, :system

#   def runs_on_snes?
#     self.system == 'SNES'
#   end

#   def runs_on_ps1?
#     self.system == 'PS1'
#   end

#   def runs_on_genesis?
#     self.system == 'Genesis'
#   end
# end

class Game
  SYSTEMS = ['SNES', 'PS1', 'Genesis']

  attr_accessor :name, :year, :system

  SYSTEMS.each do |system|
  	define_method runs_on_snes? do
  		system =~ @system
  	end

  	end
  end
  end
  end
end

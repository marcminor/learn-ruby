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

# /refactored/
class Game
  SYSTEMS = ['SNES', 'PS1', 'Genesis']

  attr_accessor :name, :year, :system

  def initialize(name, options=[])
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
  end
  
  SYSTEMS.each do |system|
  	define_method "runs_on_#{system.downcase}?" do
  		SYSTEMS.detect(system)
  	end
  end
end

# game1 = Game.new("Tekken", year: 1982, system: "Nintendo")
# puts game1.system
# puts game1.name
# puts game1.year

# /refactor to use .send/
# class Library
#   attr_accessor :games
 
#   def initialize(games)
#     self.games = games
#   end
 
#   def list
#     puts games.join("\n")
#   end
 
#   def emulate(name)
#     game = find(name)
#     puts "Starting emulator for #{game}..."
#   end
 
#  protected
#   def find(name)
#     games.detect { |game| game.name == name }
#   end
# end

# GAMES = [
#   Game.new('Contra', year: 1987, system: 'NES'),
#   Game.new('Civilization', year: 1991, system: 'PC'),
#   Game.new('The Legend of Zelda', year: 1986, system: 'NES'),
#   Game.new('Mega Man X2', year: 1995, system: 'SNES'),
#   Game.new('Super Metroid', year: 1994, system: 'SNES'),
#   Game.new('Sim City 2000', year: 1993, system: 'PC'),
#   Game.new('Starcraft', year: 1998, system: 'PC')
# ]

# # library = Library.new(GAMES)
# # library.list
# # library.emulate("Contra")
# # game = library.find("Contra")

# /refactored/
# library = Library.new(GAMES)
# library.public_send(:list)
# library.public_send(:emulate, "Contra")
# game = library.send(:find, "Contra")

# /refactor to check if the method exists, then call them/
# emulate = library.method(:emulate)
# list = library.method(:list)
# emulate.call("Contra")
# list.call
 
/refactoring, continued.../

# class Library
#   attr_accessor :games

#   def each(&block)
#     games.each(&block)
#   end

#   def map(&block)
#     games.map(&block)
#   end

#   def select(&block)
#     games.select(&block)
#   end
# end

/refactored using define_method to avoid duplicating code/
class Library
  attr_accessor :games

  [:each, :map, :select].each do |method|
    define_method(method) do |&block|
      games.send(method, &block)
    end
  end


  games.each do |game|
    
      game.send(:each, &block)
      game.send(:map, &block)
      game.send(:select, &block)
    end
  end

  def initialize(games)
    self.games = games
  end

  def each(&block)
    games.each(&block)
  end

  def map(&block)
    games.map(&block)
  end

  def select(&block)
    games.select(&block)
  end
end


GAMES = [
  Game.new('Contra', year: 1987, system: 'NES'),
  Game.new('Civilization', year: 1991, system: 'PC'),
  Game.new('The Legend of Zelda', year: 1986, system: 'NES'),
  Game.new('Mega Man X2', year: 1995, system: 'SNES'),
  Game.new('Super Metroid', year: 1994, system: 'SNES'),
  Game.new('Sim City 2000', year: 1993, system: 'PC'),
  Game.new('Starcraft', year: 1998, system: 'PC')
]


library = Library.new(GAMES)

library.each { |game| puts "#{game.name}" }



/------RUBYBITS 3 - CLASSES-------/

/create a class to store a games array and make it accessible to the public/
# class Library
# 	attr_accessor :games
# 	def initialize(games)
# 		@games = games
# 	end
# end

/refactor to pass in an instance of a game, and check for equality with the entire game object using the declared == method on Game/
# class Library
#   attr_accessor :games

#   def initialize(games)
#     self.games = games
#   end

#   def has_game?(search_name)
#     for game in games
#       return true if game.name == search_name
#     end
#     false
#   end
# end

/refactored and added 'add_game' method/

# class Game
#   attr_accessor :name, :year, :system
#   attr_reader :created_at
 
#   def initialize(name, options={})
#     self.name = name
#     self.year = options[:year]
#     self.system = options[:system]
#     @created_at = Time.now
#   end
 
#   def to_s
#     self.name
#   end

#   def ==(game)
#     name == game.name && 
#     system == game.system &&
#     year == game.year
#   end
# end

# class Library
#   attr_accessor :games

#   def initialize(games)
#     self.games = games
#   end

#   def add_game(game)
# 	games << game
#   end

#   def has_game?(game)
#     for game in games
#       return true if game == Game
#     end
#     false
#   end
# end

/created private method 'log' to display what game we added/
# class Library
#   attr_accessor :games

#   def initialize(games)
#     self.games = games
#   end

#   def has_game?(search_game)
#     for game in games
#       return true if game == search_game
#     end
#     false
#   end

#   def add_game(game)
#     @games ||= Array.new
#     games << game
#     message = "You've added #{game.name} which was released on #{game.system} in #{game.year.to_s}"
#     log(message)
#   end
  
#   def show_library
#   	puts "Here is your list of games: #{games}"
#   end

#   private
#   def log(message)
#     puts message
#   end
# end	

# my_game = Game.new("Contra", year: 1992, system: "SNES")
# game2 = Game.new("Tekken", year: 1996, system: "Playstation")
# games = ()
# my_library = Library.new(games)

# puts my_library
# puts my_game.name
# my_library.add_game(my_game)
# my_library.add_game(game2)
# my_library.show_library

/--------------USE SUPER TO AUGMENT PARENT CLASS------------/
# class ArcadeGame < Game
#   attr_accessor :weight
#   def initialize(name, options = {})
#     super
#     self.weight = options[:weight]
#   end
# end

# class ConsoleGame < Game
#   def to_s
#   	# puts "#{self.name} and #{self.system}"
#   	self.system
#   end
# end

# ceasefire = ArcadeGame.new("Ceasefire", year: 2001, system: "Arcade", weight: "160lbs")
# tekken2 = ConsoleGame.new("Tekken 2", year: 1999, system: "Console")

# puts tekken2.to_s
# my_library.add_game(ceasefire)
# my_library.add_game(tekken2)
# my_library.show_library


/-------------refactored to to use to_s implicitly------------/
class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at
  def initialize(name, options={})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end

  def to_s
    self.name
  end

  def description
    "#{self} was released in #{self.year}."
  end
end

class ConsoleGame < Game
  def to_s
    "#{super} - #{self.system}"
  end
end


class Library
  attr_accessor :games

  def initialize(games)
    self.games = games
  end

  def has_game?(search_game)
    for game in games
      return true if game == search_game
    end
    false
  end

  def add_game(game)
    @games ||= Array.new
    games << game
    message = "You've added #{game.name} which was released on #{game.system} in #{game.year.to_s}"
    log(message)
  end
  
  def show_library
  	puts "Here is your list of games: #{games}"
  end

  private
  def log(message)
    puts message
  end
end	

class ArcadeGame < Game
  attr_accessor :weight
  def initialize(name, options = {})
    super
    self.weight = options[:weight]
  end
end


/---run the code---/
ceasefire = ArcadeGame.new("Ceasefire", year: 2001, system: "Arcade", weight: "160lbs")
tekken2 = ConsoleGame.new("Tekken 2", year: 1999, system: "Console")

my_game = Game.new("Contra", year: 1992, system: "SNES")
game2 = Game.new("Tekken", year: 1996, system: "Playstation")
games = ()
my_library = Library.new(games)

puts my_game.description
puts tekken2.description
my_library.add_game(my_game)
my_library.add_game(game2)
# my_library.show_library
# my_library.add_game(ceasefire)
# my_library.add_game(tekken2)
# my_library.show_library

# puts tekken2.to_s
# puts my_game.name
# puts my_library
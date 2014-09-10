/RUBYBITS 2-5 DSL PART 1/
# Domain Specific Languages
# A language that has terminology and constructs designed for a specific domain

# Active::Record is a good example of a DSL (its written for Rails)

# External DSL vs. Internal DSL
# External DSL is a standalone DSL
# To implement an external DSL requires a lot of work. You have to build a compiler, a parser, a runtime...etc. 

# Internal DSL is a DSL implemented within another programming language

# Ruby is really good at building internal DSLs

# Posting tweets to twitter

# How do you enable chaining methods in a class?
# Make sure to return 'self' at the end of each method

/implement initialize method and a getter set to name/
# class Game
# 	attr_reader :name

# 	def initialize(name)
# 		@name = name
# 	end
# end

/implement initialize method and add_game method/
class Library
	def initialize
		@games = []
	end

	def add_game(game)
		@games << game
	end

	def find_by_name(name)
    	@games.detect { |game| game.name == name }
  	end

end


# LIBRARY = Library.new

# def add_game(name)
#   game = Game.new(name)
#   LIBRARY.add_game(game)
# end

/implement system and year methods in the game class that store data in instance variables, then use instance_eval to run the block in the context of the game/
/We'd like to be able to call a method named print_details inside the block that prints the game's name, publication year, and system. /

class Game
  attr_reader :name

  def initialize(name)
    @name = name
    @year = nil
    @system = nil
  end

  def system(system)
  	@system = system
  end

  def year(year)
  	@year = year
  end

  def print_details
 	puts "#{@name}, #{@year}, #{@system}"
  end

  def play
  end

  def capture_screenshot
  end

end

LIBRARY = Library.new

def add_game(name, &block)
  game = Game.new(name)
  game.instance_eval(&block)
  LIBRARY.add_game(game)
end

/Let's add a new method to our DSL that looks up a game from the library and allows us to do things with it./

def with_game(game, &block)
  mygame = LIBRARY.find_by_name(game)
  mygame.instance_eval(&block)
end

add_game "Civilization" do
  system "PC"
  year 1991
end
 
with_game "Civilization" do
	print_details
end
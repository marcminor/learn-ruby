/rubybits2-6.rb/

/We want to be able to add arbitrary tags to our games; to add tags by calling methods inside the add_game block. 
Use method_missing to store these tags in a @tags array./

class Game
  attr_reader :name
 
  def initialize(name)
    @name = name
    @year = nil
    @system = nil
    @tags = []
  end
 
  def year(value)
    @year = value
  end
 
  def system(value)
    @system = value
  end
 
  def print_details
    puts "#{@name} - #{@year} (#{@system})"
    puts "#{tags}"
  end
 
  def capture_screenshot
    puts "Grabbing a screenshot for #{@name}"
  end
 
  def play
    if @system == "SNES"
      raise "No emulator for SNES games"
    else
      puts "Starting #{@name}"
    end
  end
 
  def method_missing(method_name, *args)
    @tags << method_name.to_s
  end
end

class Library
  attr_reader :games

  def initialize
    @games = []
  end
 
  def add_game(game)
    @games << game
  end
 
  def find_by_name(name)
    @games.detect { |game| game.name == name }
  end

  def find_by_tag(tag)
    @games.select { |game| game.tags.include?(tag) }
  end

end

LIBRARY = Library.new

# def add_game(name, &block)
#   game = Game.new(name)
#   game.instance_eval(&block)
#   LIBRARY.add_game(game)
# end

# def with_game(name, &block)
#   game = LIBRARY.find_by_name(name)
#   game.instance_eval(&block)
# end


/We'd like to provide an optional single-line syntax for adding games to the library. Modify the add_game method/
def add_game(name, system = nil, year = nil, &block)
  game = Game.new(name)
  game.system(system) if system
  game.year(year) if year
  game.instance_eval(&block) if block_given?
  LIBRARY.add_game(game)
end

/change with_game so that it accepts multiple games/
def with_game(*names, &block)
  names.each do |name|
    game = LIBRARY.find_by_name(name)
    game.instance_eval(&block)
  end
end

/let's add a new method to our DSL to look up games by tag/

def with_games_tagged(tag, &block)
  tagged_games = LIBRARY.find_by_tag(tag)
  tagged_games.each do |game|
  	game.instance_eval(&block)
  end
end

add_game "Civilization" do
  system "PC"
  year 1991
  strategy 
  turn_based 
end
 
add_game "The Legend of Zelda", "NES", 1986

with_game "Civilization" do
	print_details
end

with_games_tagged "strategy" do
  print_details
end

add_game("Civilization", "PC", 1991) { strategy turn_based }
add_game("Contra", "NES", 1987) { strategy turn_based }
add_game("The Legend of Zelda", "NES", 1986) { action rpg }
add_game("Mega Man X2", "SNES", 1995) { action }
add_game("Super Metroid", "SNES", 1994) { adventure platformer }
add_game("Sim City 2000", "PC", 1993) { strategy simulation }
add_game("Starcraft", "PC", 1998) { realtime strategy }

/Add some code to print the details of all the action games, capture screenshots for Contra and Sim City 2000, and play Starcraft./

with_games_tagged "action" do
	print_details
end

with_game "Contra", "Sim City 2000" do
	capture_screenshot
end

with_game "Starcraft" do
	play
end


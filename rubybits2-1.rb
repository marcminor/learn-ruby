/--RUBYBITS PART 2 - 1--/
# Blocks, procs and lambdas.

# Proc.new { puts words }
# my_proc.call
# OR
# my_proc = lambda { puts words }
# my_proc.call

# my_proc = -> { puts words }

# Use procs or lambdas as a replacement of yield so that we can explicitly call the block instead of yielding

# converting between proc objects and blocks: &proc

# def each(&block)

# tweets.map(&:user)

# block_given?
# detects if a block was passed into a method

# What is happening here?
# Tweet.new do |tweet| block of code end
# An object is being instantiated with a block of code instead of the = setter.
# To do this, yield the object to the block in the constructor (init) using 'yield self if block_given?'

# closure
# keeps the current state of the local variables when they are created

/--1 Procs--/

class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at

  def initialize(name, options={})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end
end

class Library
  attr_accessor :games

  def initialize(games)
    @games = games
  end

  def exec_game(name, action, error_handler)
    game = games.detect { |game| game.name == name }
    begin
      action.call(game) 
    rescue
      error_handler.call
    end
  end

/--refactoring blocks and procs--/
/starting method/
  # def each
  #   games.each do |game|
  #     yield game
  #   end
  # end

/refactored to capture a block as a proc so it can be called directly instead of yielding/
  # def each(&block)
  #   games.each do |game|
  #     block.call game
  #   end
  # end
/refactored into one line/
  def each(&block)
    games.each(&block)
  end

/starting method/
  # def names
  #   games.map { |game| game.name }
  # end
/refactored using Symbol#to_proc/
  def names
    games.map(&:name)
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

error_handler = lambda do
  puts "Oh no, there was an error!"
end

library = Library.new(GAMES)
print_details = lambda do |game|
  puts "#{game.name} (#{game.system}) - #{game.year}"
end

# library.exec_game("Contra", print_details)
library.exec_game("Homefry", print_details, error_handler)

my_proc = Proc.new { |game| puts "#{game.name} (#{game.system}) - #{game.year}" }

# library.each(&my_proc)

puts library.names

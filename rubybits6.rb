/--RUBYBITS 6 BLOCKS--/

# Blocks can take arguments

# { |argument| argument.block of code }

# .sort_by { |object| object.created_at }
# .map { |object| object.status }
# .find_all 

/--1 ITERATING WITH BLOCKS--/


# class Game
#   attr_accessor :name, :year, :system
#   attr_reader :created_at
 
#   def initialize(name, options={})
#     self.name = name
#     self.year = options[:year]
#     self.system = options[:system]
#     @created_at = Time.now
#   end
# end

/refactor the for loop to use each with a block instead/

# class Library
#   attr_accessor :games

#   def initialize(games = [])
#     self.games = games
#   end

#   def list
#     for i in 0...(games.length)
#       game = games[i]
#       puts game.name
#     end
#   end
# end

# class Library
#   include Enumerable
#   attr_accessor :games

#   def initialize(games = [])
#     self.games = games
#   end

#   def each
#   	games.each do |game|
#   	  yield game
#   	end
#   end

#   def list
#     games.each { |game| puts yield game }
#   end

#   def each_on_system(system)
#     games.each do |game|
#       if system == game.system
#       	yield game
#       end
#   	end
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


# library = Library.new(GAMES)
# library.each_on_system("SNES") { |game| puts game.name }
# Library
# library.list { |game| "#{game.name} (#{game.system}) - #{game.year}" }
# library.select { |game| game.year == 1987 }
# library.collect { |game| game.system }
# library.each { |game| game }


/---final lesson - REFACTORING WITH BLOCKS --/

class Emulator
  def initialize(system)
    # Creates an emulator for the given system
  end
 
  def play(game)
    # Runs the given game in the emulator
  end
 
  def start(game)
    # Loads the given game but doesn't run it
  end
 
  def screenshot
    # Returns a screenshot of the currently loaded game
  end
end

/Refactor the play and screenshot methods to remove duplicate code/

# class Game
#   attr_accessor :name, :year, :system
#   attr_reader :created_at

#   def initialize(name, options={})
#     self.name = name
#     self.year = options[:year]
#     self.system = options[:system]
#     @created_at = Time.now
#   end

#   def play
#     begin
#       emulator = Emulator.new(system)
#       emulator.play(self)
#     rescue Exception => e
#       puts "Emulator failed: #{e}"
#     end
#   end

#   def screenshot
#     begin
#       emulator = Emulator.new(system)
#       emulator.start(self)
#       emulator.screenshot
#     rescue Exception => e
#       puts "Emulator failed: #{e}"
#     end
#   end
# end

/refactored/

class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at

  def initialize(name, options={})
    self.name = name
    self.year = options[:year]
    self.system = options[:system]
    @created_at = Time.now
  end

  def play
    begin
      emulator = Emulator.new(system)
      emulator.play(self)
    rescue Exception => e
      puts "Emulator failed: #{e}"
    end
  end

  def screenshot
    begin
      emulator = Emulator.new(system)
      emulator.start(self)
      emulator.screenshot
    rescue Exception => e
      puts "Emulator failed: #{e}"
    end
  end
end




/rubybits2/
/-------------METHODS- OPTIONAL ARGUMENTS----------/
# def new_game(name, year, system)
#   {
#     name: name,
#     year: year,
#     system: system
#   }
# end
# game = new_game("Street Figher II", nil, nil)

/refactored/
# def new_game(name, year = nil, system = nil)
#   {
#     name: name,
#     year: year,
#     system: system
#   }
# end
# game = new_game("Street Figher II")

# puts game

/refactored to use named parameters and eliminate nil in default parameters/
# def new_game(name, options={})
#   {
#     name: name,
#     year: options[:year],
#     system: options[:system]
#   }
# end
# game = new_game("Street Figher II", system: "SNES", year: 1992)

# puts game

/refactored to raise an exception and rescue from it/
# class InvalidGameError < StandardError; end
# def new_game(name, options={})
#   unless name
#   	raise InvalidGameError.new
#   end
#   {
#     name: name,
#     year: options[:year],
#     system: options[:system]
#   }
# end
# begin
#   game = new_game(nil)
# rescue InvalidGameError => e
#   puts "There was a problem creating your new game: #{e.message}"
# end

/------SPLAT ARGUMENTS-----/
# def describe_favorites(games)
#   for game in games
#     puts "Favorite Game: #{game}"
#   end  
# end
# describe_favorites(['Mario', 'Contra', 'Metroid'])

/refactored with splat argument/
# def describe_favorites(*games)
#   for game in games
#     puts "Favorite Game: #{game}"
#   end  
# end
# describe_favorites('Mario', 'Contra', 'Metroid')

/--------CLASSES--------/
# class Game
#   def initialize(name, options={})
#   end
# end

/refactored to store data in the class/
# class Game
#   def initialize(name, options={})
#   	@name = name
#   	@system = options[:system]
#   	@year = options[:year]
#   end
# end

/added attribute accessor so the data can be retrieved/
class Game
  attr_accessor :name, :system, :year
  def initialize(name, options={})
    @name = name
    @year = options[:year]
    @system = options[:system]
  end

  def getInfo
  	puts "The game #{@name} was released on #{@system} in #{@year}."
  end
end

game = Game.new("Contra", system: "SNES", year: 1977)

puts game.getInfo

/----RUBY BITS LESSON 4 - ACTIVESUPPORT-----/

/----active support methods to learn
array.from(4)
array.to(2)
array.in_groups_of(3)
array.split(2)


DATE
DateTime.new(1987, 2, 20, 0, 0, 0)
.advance(years: 4, months: 3, weeks: 2, days: 1)
.tomorrow
.yesterday

HASH
options.diff(new_options)
options.stringify_keys
options.reverse_merge(defaults) - adds any defaults that aren't included into the options hash
options.except(parameter) (removes the key)
asset_valid_keys(:user, :lang)

INTEGER
.odd?
.even?

INFLECTOR
ordinalize
pluralize
singularize
titleize
humanize

end of new methods-------/

require 'active_support/all'


/--lesson 1 & 2- from and to--/
# def last_games(games, index)
#   games.from(index)
# end

# def first_games(games, index)
#   games.to(index)
# end


# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# puts first_games(games, 2)

# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# puts last_games(games, 1)

/--lesson 3 dates--/
# def anniversary(game, years)
#   game[:release].advance(years: years)
# end

# game = {
#   name: 'Contra',
#   release: DateTime.new(1987, 2, 20, 0, 0, 0)
# }

# puts anniversary(game, 20)

/--lesson 4 hashes - diff--/
# def difference_between(player1, player2)
#   player1.diff(player2)
# end

# mario_favorite = {
#   sports: "Mario Sports Mix",
#   action: "Super Mario World"
# }

# luigi_favorite = {
#   sports: "Golf",
#   action: "Super Mario World"
# }

# puts difference_between(mario_favorite, luigi_favorite)

/--lesson 5 hashes- except--/

# def exclude_character(games, character)
#   games.except(character)
# end
 
# games = {
#   mario: ["Super Mario World", "Super Smash Bros. Melee"],
#   luigi: ["Luigi's Mansion"],
#   yoshi: ["Yoshi's Island", "Yoshi's Story"]
# }
# puts exclude_character(games, :yoshi)


/--lesson 6 numbers- even or odd--/

/refactor this to use .even and .odd--/
# def describe_count(games)
#   if games.empty?
#     "You have no games"
#   elsif (games.length % 2) == 0
#     "You have an even number of games"
#   elsif (games.length % 2) != 0
#     "You have an odd number of games"
#   end
# end
#/refactored/
# def describe_count(games)
#   if games.empty?
#     "You have no games"
#   elsif games.length.even?
#     "You have an even number of games"
#   elsif games.length.odd?
#     "You have an odd number of games"
#   end
# end

# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# puts describe_count(games)

/--lesson 7 strings--/

def convert_title(title)
  title.titleize
end

puts convert_title("super mario bros.")



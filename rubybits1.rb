/refactor the below to use unless/
# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# if !games.empty?
#   puts "Games in your vast collection: #{games.count}"
# end

/ basic approach / 
# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# unless games.empty?
#   puts "Games in your vast collection: #{games.count}"
# end

/single line approach/
# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# puts "Games in your vast collection: #{games.count}" unless games.empty?


/-------IMPLIED NIL----------/
/Refactor the below to remove the comparison to nil/

# search = "Contra"
# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# search_index = games.find_index(search)
# if search_index != nil
#   puts "Game #{search} Found: #{games[search_index]} at index #{search_index}."
# else
#   puts "Game #{search} not found."
# end

/Nil is implied. No need to write it. refactored/
# search = "Contra"
# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# search_index = games.find_index(search)

#  if search_index
#  	puts "Game #{search} Found: #{games[search_index]} at index #{search_index}."
#  else 
#  	puts "Game #{search} not found."
#  end


/----------SHORT CIRCUIT AND----------/
# search = "Super Mario Bros."
# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# matched_games = games.grep(Regexp.new(search))

# # Found an exact match
# if matched_games.length > 0
#   if matched_games.include?(search)
#     puts "Game #{search} found."
#   end
# end

/refactored to removed the unnecessary second if statement/
# search = "Super Mario Bros."
# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# matched_games = games.grep(Regexp.new(search))

# # Found an exact match
# if matched_games.length > 0 && matched_games.include?(search) 
# 	puts "Game #{search} found."
# end


/----------CONDITIONAL ASSIGNMENTS - CHANGE TO CONDITIONAL----------/
# search = "" unless search
# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# matched_games = games.grep(Regexp.new(search))
# puts "Found the following games..."
# matched_games.each do |game|
#   puts "- #{game}"
# end

/refactored/
# search ||= ""
# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# matched_games = games.grep(Regexp.new(search))
# if matched_games
# 	puts "Found the following games..."
# 	matched_games.each do |game|
# 		puts "- #{game}"
# 	end
# end


/----------CONDITIONAL RETURN----------/
# search = "Contra"
# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# search_index = games.find_index(search)
# if search_index
#   search_result = "Game #{search} found: #{games[search_index]} at index #{search_index}."
# else
#   search_result = "Game #{search} not found."
# end
# puts search_result

/refactored/
# search = "Contra"
# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# search_index = games.find_index(search)
# search_result = if search_index
# 	"Game #{search} found: #{games[search_index]} at index #{search_index}." 
# else
#   "Game #{search} not found."
# end
# puts search_result


/----------CONDITIONAL RETURN IN METHODS (COMMON)----------/
# def search(games, search_term)
#   search_index = games.find_index(search_term)
#   search_result = if search_index
#     "Game #{search_term} found: #{games[search_index]} at index #{search_index}."
#   else
#     "Game #{search_term} not found."
#   end
#   return search_result
# end
 
# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# puts search(games, "Contra")
 
/refactored/

# def search(games, search_term)
#   search_index = games.find_index(search_term)
#   if search_index
#     "Game #{search_term} found: #{games[search_index]} at index #{search_index}."
#   else
#     "Game #{search_term} not found."
#   end
# end
 
# games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
# puts search(games, "Contra")


/----------SHORT CIRCUIT EVALUATION----------/
# def search_index(games, search_term)
#   search_index = games.find_index(search_term)

#   if search_index
#     search_index
#   else
#     "Not Found"
#   end
# end

/refactored for short circuit evaluation and reduced to one line/
def search_index(games, search_term)
  games.find_index(search_term) || "Not Found" 
end


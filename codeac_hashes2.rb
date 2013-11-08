=begin
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

# goal: print out just the titles of the movies using the .each_key hash iterator

#first approach
titles = []

movie_ratings.each_key { |title| 
  titles.push title
}

puts titles

#second approach

movie_ratings.each_key do |title|
  puts title, " "
end

=end

movies = {
    Braveheart: 4,
    Aliens: 3,
    Water_World: 1
}

puts "What would you like to do? \nYou can add, update, display, or delete."
choice = gets.chomp()

choice.downcase!

case choice
when "add"
    puts "What is the title of the movie you'd like to add?"
    title = gets.chomp()
    
    until movies[title.to_sym].nil?
      puts "Looks like that movie already exists! You can enter a different movie, update the rating or delete #{title}."
      puts "What is the title of a new movie you'd like to add?"
      title = gets.chomp()
    end
    
    puts "What is the rating you'd like to give this movie (0-5)?"
    rating = gets.chomp()
    
    until rating.to_i <= 5
        puts "You entered \"#{rating}\". Your rating must be between 0-5. Try again."
        puts "Please enter a rating between 0-5."
        rating = gets.chomp()
    end
    
    movies[title.to_sym] = rating.to_i
    puts "Awesome! \"#{title}\" was added with a #{rating}-star rating!"

when "update"
    puts "What movie do you want to update?"
    title = gets.chomp()
    
    if movies[title.to_sym].nil?
        puts "Error! There isn't a movie with that name in the system. Try again"
    else
        puts "What should the new rating be? #{title}'s current rating is #{movies[title.to_sym]}."
        rating = gets.chomp()
        movies[title.to_sym] = rating.to_i
        puts "Awesome your new rating for #{title} is #{movies[title.to_sym]}!"
    end
when "display"
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
end
when "delete"
    puts "What movie do you want to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Sorry the movie \"#{title}\" isn't in the database."
    else
        movies.delete(title.to_sym)
        puts "Sounds good! \"#{title}\" has been deleted"
    end
else
    puts "Error! There is no command for \"#{choice}\". You can add, update, display, or delete."
end
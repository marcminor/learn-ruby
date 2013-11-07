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

prompt = "> "
movies = {
    Braveheart: 4,
    Aliens: 3,
    Water_World: 1
}

puts "What would you like to do?"
print prompt
choice = gets.chomp()

choice.downcase!

case choice
when "add"
    puts "Added!"
when "update"
    puts "Updated!"
when "display"
    puts "Movies!"
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end

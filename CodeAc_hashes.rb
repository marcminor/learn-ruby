strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!

symbols = []

strings.each do |language|
		symbols.push language.to_sym
end

puts symbols

=begin
#this is the old style of doing hashes. Currently, the rocket hash is no longer used and the colon comes after the word (symbols still have it before)
movies {
    :evil_dead => "zombies come back to life",
    :braveheart => "lost wife. went ballistic.", 
    :exorcist => "god complex."
}

=end

movies = {
    evil_dead: "zombies come back to life",
    braveheart: "lost wife. went ballistic.",
    exorcist: "god complex."
}

puts movies

movies2 = Hash.new
movies2[:evil_dead] = "zombies come back to life"

puts movies2

puts "the following code runs a benchmark test to show how hashes that use symbols perform much faster than hashes that use strings. make sense?"
print "> "
gets.chomp()

require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."
#sets local variable 'prompt' to string
prompt = "> "
#displays a string with a new line afterwards
puts "Input please: "
#displays the value of the prompt variable without a new line printed after
print prompt
#sets local variable 'text' to the user input. gets is a method that accepts user input and 'chomp' is a method that eliminates the second line
text = gets.chomp()

#sets a local variable 'words' to the result of 'text.split'. .split is a method called on the text variable. it turns the string into an array using a delimeter
words = text.split(" ")
#creates a new hash with a default value of zero and gives it the variable name 'frequencies'
frequencies = Hash.new(0)

#the .each method is an iterator that iterates through the 'words' array and performs and action on it. In this case, it adds each word to the frequencies hash
words.each do |word|
    frequencies[word] += 1
end

#the .sort_by method sorts the hash by its values 'b'
frequencies = frequencies.sort_by {|a, b| b}
#the .reverse method reverses the sort and the ! applies it permanently
frequencies.reverse!

frequencies.each do |word, frequency|
    puts word + " " + frequency.to_s
end
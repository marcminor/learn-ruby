class Computer
    @@users = {}
    def initialize(username, password)
        @username = username
        @password = password
        @@users[username] = password
        @files = {index: "2013-11-23 17:37:10 -0500", home: "10:27"}
    end
    
    def create(filename)
        time = Time.now
        @files[filename.to_sym] = time
        puts "Hi #{@username} your file #{filename} was created at #{time}!"
    end
    
    def update(filename)
        delete(filename)
        puts "What is the new name for #{filename}?"
        new_filename = gets.chomp()
        create(new_filename)
        puts "cool! we're all updated!"
    end
    
    def delete(filename)
        until @files[filename.to_sym].nil? == false do 
            puts "sorry that's not a file in the computer." 
            puts "what is the name of the file you want to delete? Here is the list of current files: #{@all_files}"
            filename = gets.chomp()
        end
        @files.delete(filename.to_sym)
        puts "deleted! Here is the list of current files: #{@all_files}"
    end

    def Computer.get_users
        return @@users
    end

    def get_files
        @all_files = []
        @files.each do |file, time|
            @all_files.push file.to_s
        end
        return @all_files
    end
end




#new Computer instance
my_computer = Computer.new(:marc, "my_pw")

puts "What do you want to do? create, update, or delete?"

action = gets.chomp()

case action
  when "create"
    puts "what is the name of the new file?"
    filename = gets.chomp()
    my_computer.create(filename)
  when "update"
    puts "what is the name of the file you want to update? Here is the list of current files: #{my_computer.get_files}"
    filename = gets.chomp()
    my_computer.update(filename)
when "delete"
    puts "what is the name of the file you want to delete? Here is the list of current files: #{my_computer.get_files}"
    filename = gets.chomp()
    my_computer.delete(filename)

else
end

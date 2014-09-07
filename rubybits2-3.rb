/rubybits2-3 - UNDERSTANDING SELF/
# What does self return outside a class? eg. puts "we are in #{self}" 
# self refers to the tweet class object inside a class. 
# Outside a class, self is a special object called 'main'. 

# self.method
# class method with its own value

# What does self refer to in this example? 
# def self.find(keyword)
# The class object

# When there is no explicit receiver (object.method), ruby tries to find that method in self.

# Classname.class_eval
# sets the value of the self to the specified class and runs the block on the object

# What is klass used for? 

# instance_eval
# sets self to an instance of an object and runs the block on that.


# /change message so that when the Game class is loaded, it prints 'I am inside the Game class.' Do this using the value of self./
# class Game
#   puts "I am"
# end

# class  Game
	
#   attr_accessor :name, :owner
 
#   def initialize(name)
#     @name = name
#   end

#   puts "I am inside the #{self} class."
# /refactor to not include the name of the class in its signature./
  
#   def self.find_by_title(name)
#   end

# end


/GAMEOVERRIDE.RB - use class_eval to add a find_by_owner method/

# Game.class_eval do
# 	def self.find_by_owner(name)
# 	end
# end

/implement make_available to define a 'lend_to_user' method with class_eval. When make_available is called it should create an instance method to be created with the arguments/
# class LibraryManager
  
#   def self.make_available(klass, user)
#   	klass.class_eval do 
#       define_method("lend_to_#{user}") do
#       end
#   	end
#   end
# end

# LibraryManager.make_available(Game, "gregg")

/using instance_eval, set the owner of the contra game/
# contra_game = Game.new('Contra')

# contra_game.instance_eval do
# 	@owner = "Alice"
# end

# puts contra_game.owner


/Using instance_eval and block_given?, implement the constructor for the Game class so that it optionally accepts a block and runs the block within its context./

class Game
  attr_accessor :name

  def initialize(&block)
  	instance_eval(&block) if block_given?
  end

  def owner(name=nil)
    if name
      @owner = name
    else
      @owner
    end
  end
end


game = Game.new { owner('Bob') }
puts game.owner

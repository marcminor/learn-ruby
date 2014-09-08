/RUBYBITS 2-4 MISSING METHODS/
# Hooks
# Methods that ruby calls when certain events happen in your program 
# Method_missing is an example of a Hook

# logger.warn
# Logger is a ruby class that has levels of responses that can be set (eg. fatal, error, warn...etc). The messages have associated levels, such as INFO or ERROR that indicate their importance. You can then give the Logger a level, and only messages at that level of higher will be printed.

# method_missing
# Ruby calls this whenever you call a method that Ruby can't find
# It gives ut the chance to respond to methods that don't really exist by defining this in the class.

# How can method_missing help with code duplication issues?
# Use .send to pass the method and its arguments to desired class. Useful if a class has methods which delegate to a different class (eg. pass the arguments to the other class like setting a username). Instead of duplicating code for basic methods

# arrayname.include?(argument)
# Include checks each item in an array against the argument and returns true if it is included.

# How can you delegate when unknown methods are called?
# Ruby class SimpleDelegator

# .match(/string/)

# .respond_to?(:method)
# Tells us wheher a object responds to a given method

# .respond_to_missing?
# Useful for returning the correct method object when using a dynamic method


/implement method_missing so that it prints the method that is called/
# class Library
#   def method_missing(methodname, *args)
#   	puts "#{methodname} and #{args}"
#   end
# end

/delegate unknown method calls to Library's @manager object/
# class Library
#   def initialize(console)
#     @manager = console
#   end

#   def method_missing(name, *args)
#   	@manager.send(name, *args)
#   end
# end

/change so that it only delegates to @manager if the method name contains the string 'atari'. Otherwise, call super./
# class Library
#   def initialize(console)
#     @manager = console
#   end

#   def method_missing(name, *args)
#   	if name =~ /atari/
#   		@manager.send(name, *args)
#   	else
#   		super
#   	end
#   end
# end

# library = Library.new("SNES")

/refactor to use Ruby's built-in SimpleDelegator/

# require 'delegate'

# class Library < SimpleDelegator
#   def initialize(console)
#     super(console)
#     @manager = console
#   end
# end


/dynamically define methods matching the array the first time they are called/
# class Library
#   SYSTEMS = ['arcade', 'atari', 'pc']

#   attr_accessor :games

#   def method_missing(name, *args)
#     system = name.to_s

#   end

#   private

#   def find_by_system(system)
#     games.select { |game| game.system == system }
#   end
# end

# class Library
#   SYSTEMS = ['arcade', 'atari', 'pc']

#   attr_accessor :games

#   def method_missing(name, *args)
#     system = name.to_s
#     if SYSTEMS.include?(system)
#       self.class.class_eval do
#         define_method(system) do
#           find_by_system(system)
#       	end
#       end
#         send(system)
#     else
#     	super
#     end  
#   end

#   private

#   def find_by_system(system)
#     games.select { |game| game.system == system }
#   end
# end


/make sure that the Library class lets other objects know that it responds to those methods./
class Library
  SYSTEMS = ['arcade', 'atari', 'pc']

  attr_accessor :games

  def method_missing(name, *args)
    system = name.to_s
    if SYSTEMS.include?(system)
      self.class.class_eval do
        define_method(system) do
          find_by_system(system)
      	end
      end
        send(system)
    else
    	super
    end  
  end

  def respond_to?(name)
    SYSTEMS.include?(name.to_s) || super
  end
    
  def respond_to_missing?(name)
  	SYSTEMS.include?(name.to_s) || super
  end


  private

  def find_by_system(system)
    games.select { |game| game.system == system }
  end
end



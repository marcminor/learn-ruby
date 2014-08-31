/----RUBY BITS LEVEL 5 - MODULES ----/

/--new methods
namespace
methods can conflict if they are stored in the global namespace. That's why modules are needed.

Modules are important for keeping methods from conflicting. namespacing which controls 
Call the module from the class. This will expose the module methods as instance methods in the object. 

namespacing operator ::

include 
those methods will have access to the objects internal properties
Include adds the module to the class's ancestor chain

include Module1
extend Module1::Module2 (where module2 is an inner module of module1)

def self.included() [block of code] end;	
Method hooks - automatically called by ruby given an event. ActiveSupport::Concern makes this much easier with .included when mixed in

.ancestors
provides list of all classes and modules the class has descended from
.included_modules

include aka mixin

mixins vs. inheritance

instance_variable.extend(ModuleName)
Extend can be used on an object. It will include the module methods as instance methods for that object

self.included

ActiveSupport::Concern
Encapsulates a number of common patterns for building modules intended as mixins. It replaces all the code to include or extend a module or class.
provides the mechanics to encapsulate a cohesive chunk of functionality into a mixin that can extend the behavior of the target class by annotating the class’ ancestor chain, annotating the class’ singleton class’ ancestor chain, and directly manipulating the target class through the included() hook.
--/




/--1 NAMESPACING---/
# class Game
#   include GameUtils
#   def initialize(name)
#     @name = name
#   end
# end

# module GameUtils
#   def self.lend_to_friend(game, friend_email)
#   end
#   def find_all_from_user(username)
#   end
# end

# game = Game.new("Contra")
# GameUtils::lend_to_friend(game, "gregg@codeschool.com")

/--5 HOOK METHODS--/
/create self.included method hook to extend the ClassMethods on the passed in class/

# module LibraryUtils

#   def add_game(game)
#   end

#   def remove_game(game)
#   end

#   module ClassMethods
#     def search_by_game_name(name)
#     end
#   end
# end

# /refactored/
# module LibraryUtils

#   def self.included(base)
#   	base.extend ClassMethods
#   end

#   def add_game(game)
#   end

#   def remove_game(game)
#   end

#   module ClassMethods
#     def search_by_game_name(name)
#     end
#   end
# end

# class AtariLibrary
#   include LibraryUtils
# end

/--6 ACTIVESUPPORT::CONCERN--/
/refactor to use activesupport to expose class methods inside a module/
require 'active_support/concern'

# module LibraryUtils

#   def self.included(base)
#     base.extend(ClassMethods)
#   end

#   def add_game(game)
#   end

#   def remove_game(game)
#   end

#   module ClassMethods
#     def search_by_game_name(name)
#     end
#   end
# end

# /refactored/
# module LibraryUtils

#   extend ActiveSupport::Concern
#   included do |name|
#   	load_game_list
#   end

#   def add_game(game)
#   end

#   def remove_game(game)
#   end

#   module ClassMethods
#     def search_by_game_name(name)
#     end
#     def load_game_list(name)
#     end
#   end
# end

# class Library
# 	extend ClassMethods
# 	def initialize(games)
# 		@games = games
# 	end
# end

# module GameUtils
#   def self.lend_to_friend(game, friend_email)
#   end
#   def find_all_from_user(username)
#   end
# end

# class Game
#   include GameUtils
#   def initialize(name)
#     @name = name
#   end
# end

# game1 = Game.new("Contra")
# game2 = Game.new("Tekken")
# game3 = Game.new("Ninja Gaiden")

# games = [game1, game2, game3]
# my_library = Library.new(games)

# my_library.search_by_game_name("Tekken")








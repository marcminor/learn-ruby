/define_method/

# class A
#   def fred
#     puts "In Fred"
#   end
#   def create_method(name, &block)
#     self.class.send(:define_method, name, &block)
#   end
#   define_method(:wilma) { puts "Charge it!" }
# end
# class B < A
#   define_method(:barney, instance_method(:fred))
# end
# a = B.new
# a.barney
# a.wilma
# a.create_method(:betty) { p self }
# a.betty



class Monk
  [:meditate_on_life, :meditate_on_the_universe, :meditate_on_everything].each do |method|
    define_method("#{method}") do |argument|
      "I know the meaning of #{argument}"
    end
   end
end

monk = Monk.new
puts monk.meditate_on_life("life")
puts monk.meditate_on_the_universe("the universe")
puts monk.meditate_on_everything("everything")
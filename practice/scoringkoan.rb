#scoring project
# A greed roll is scored as follows:
#
# * A set of three ones is 1000 points
#
# * A set of three numbers (other than ones) is worth 100 times the
#   number. (e.g. three fives is 500 points).
#
# * A one (that is not part of a set of three) is worth 100 points.
#
# * A five (that is not part of a set of three) is worth 50 points.
#
# * Everything else is worth 0 points.


# How I did it
def score(dice)
counts = Hash.new 0

dice.each do |die|
	counts[die] += 1
end

total = 0

counts.each do |key, value|
	if key == 1 
		value >= 3 ? total += 1000 : total += (value * 100)
		if value >= 4
			total += (value - 3) * 100
		end
	end
	
	if key != 1 
		if value >= 3
			total += (key.to_i * 100)
		end
		if key == 5
			value >= 3 ? total += ((value - 3) * 50) : total += (value * 50)
		end
	end
end
return total
end

# OTHER EXAMPLES OF HOW PEOPLE SOLVED IT

# def counts_from_dice(dice)
#   dice.inject({}) do |hash, value|
#     hash[value] ||= 0
#     hash[value] += 1
#     hash
#   end
# end
 
# def score(dice)
#   counts_from_dice(dice).inject(0) do |sum, (number, count)|    
#     if count >= 3
#       sum += (number == 1 ? 1000 : number * 100)
#       extras_count = count - 3
#     else
#       extras_count = count
#     end    
 
#     case number
#     when 1
#       sum += 100*extras_count
#     when 5
#       sum += 50*extras_count
#     else
#       sum += 0
#     end
    
#     sum
#   end
# end


# def score(dice)
#   score = 0

#   1.upto(6).each do |num|
#     amount = dice.count(num)
#     if amount >= 3
#       score += num == 1 ? 1000 : num * 100
#       amount -= 3
#     end

#     score += 100 * amount if num == 1
#     score += 50 * amount if num == 5
#   end

#   score
# end

puts score([1,1,1])
puts score([2,5,2,2,3])
puts score([1,1,1,1,1])
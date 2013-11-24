#a lambda is like a proc except it checks the number of arguments passed. Also, it allows a method to continue once its done
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Add your code below!

symbol_filter = lambda { |x|
    x.is_a? Symbol
}

symbols = my_array.select(&symbol_filter)

#creating a basic proc and calling it

ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

# Add your code below!

under_100 = Proc.new { |num| num < 100 }

youngsters = ages.select(&under_100)

#creating a basic lambda
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!

first_half = lambda { |key, value| value < "M" }

a_to_m = crew.select(&first_half)
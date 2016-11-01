# define variables
cars = 100
space_in_a_car = 4
drivers = 30
passengers = 90

# calculate cars driven & not driven
cars_not_driven = cars - drivers
cars_driven = drivers

# calculate potential capacity
carpool_capacity = cars_driven * space_in_a_car

# calculate average number of passengers per car
average_passengers_per_car = passengers / cars_driven

# print informational statements including variables
puts "There are #{cars} cars available"
puts "There are only #{drivers} drivers available."
puts "there will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

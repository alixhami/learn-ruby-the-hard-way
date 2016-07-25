# assign variables for first part of joke
types_of_people = 10
x = "There are #{types_of_people} types of people."

# assign variables for second part of joke
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}."

# prints both lines of the joke
puts x
puts y

# prints just the first part within another string
puts "I said: #{x}."
# prints just the second part within another string
puts "I also said: '#{y}'."

hilarious = false

# add hilarious boolean to string
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

# prints strings w and e next to one another on the same line
puts w + e

# in gets.chomp, gets takes input and chomp trims it
print "How old are you? "
age = gets.chomp.to_i
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, you were born in #{2016 - age}, you're #{height} tall and #{weight} heavy."

print "What's your job title? "
job = gets.chomp
print "What color is your hair? "
hair = gets.chomp
print "How many salmon can you eat in one sitting? "
salmon_limit = gets.chomp.to_i

puts "So, you're a #{job} with #{hair} hair and you can only eat #{salmon_limit} salmon?? Come on, I'd expect a #{job} to eat at least #{salmon_limit**2} salmon..."

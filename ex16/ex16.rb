filename = ARGV.first

# warns the user that the file is going to be overwritten
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

# allows ruby to rewrite ARGV with new inputs
$stdin.gets

# open the file
puts "Opening the file..."
target = open(filename, 'w')

# this removes all the text already in the file (truncates to zero)
puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

# prompts for line
print "line 1: "
# receives line and saves into variable
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

# write each line saved from above into the file including a newline after each line
target.write("#{line1}\n#{line2}\n#{line3}")

# close the file
puts "And finally, we close it."
target.close

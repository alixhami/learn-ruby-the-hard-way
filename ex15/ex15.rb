# Use ARGV to get filename when the ruby script is run
filename = ARGV.first

# open the file
txt = File.open(filename, "r")

# display the file
puts "Here's your file #{filename}:"
print txt.read

# ask for the filename again with gets.chomp
print "Type the filename again: "
file_again = $stdin.gets.chomp

# open the file again
txt_again = File.open(file_again, "r")

# display the file again
print txt_again.read

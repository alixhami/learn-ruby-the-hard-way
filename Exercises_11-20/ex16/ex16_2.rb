filename = ARGV.first

text = File.open(filename, "r")

puts text.read

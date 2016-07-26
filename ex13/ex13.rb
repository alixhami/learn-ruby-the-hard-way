first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

print "I need another word! "
first_tester = $stdin.gets.chomp
print "Oh one more. "
second_tester = $stdin.gets.chomp

puts "Oh look your first tester! #{first_tester}"
puts "And your second one too! #{second_tester}"

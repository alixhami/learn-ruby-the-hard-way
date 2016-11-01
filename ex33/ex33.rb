def function(num, increment)
  numbers = (0..num).to_a
  for i in numbers
    puts "At the top i is #{i}"
    i += increment
    puts "Numbers now: ", numbers[0..i]
    puts "At the bottom i is #{i}"
  end

  puts "The numbers: "
end

function(6,1)

numbers = (1..6).to_a
# remember you can write this 2 other ways?
numbers.each {|num| puts num }

numbers.each do |num|
  puts num
end

for num in numbers
  puts num
end

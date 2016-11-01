def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket.\n"
end

puts "We can just give the function numbers directly:"
cheese_and_crackers(20,30)

puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

def pizza_toppings(sauce, cheese, meat)
  puts "You have #{sauce} sauces!"
  puts "You have #{cheese} cheeses!"
  puts "You have #{meat} meats!"
  puts "Good enough for me!"
end

items = 10
sauce = 1
cheese = 3
meat = 10

puts pizza_toppings(items, items, items)
puts pizza_toppings(1, 3, 8)
puts pizza_toppings(4 % 2, 8 % 3, 9 % 5)
puts pizza_toppings(sauce, cheese, meat)
puts pizza_toppings(sauce*2, cheese*2, meat*2)
puts pizza_toppings(pizza_toppings(2,2,2),5,5)

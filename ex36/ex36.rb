def kitchen
  puts "You are in the kitchen. You see a counter, a bracelet, and another room."
  puts "What do you do?"

  print "> "
  answer = $stdin.gets.chomp

  if answer.downcase.include?("counter")
    puts "You jump up on the counter and lick bacon grease off a cast iron pan."
    puts "Alix sees you and claps loudly. Ahhh! The adventure ends."
    exit(0)
  elsif answer.downcase.include?("bracelet")
    puts "You fling the bracelet into the air repeatedly for an hour and it breaks."
    puts "This is why we can't have nice things. The adventure ends."
    exit(0)
  elsif answer.downcase.include?("room")
    puts "You saunter casually into the next room."
    livingroom
  else
    puts "Whatchu say??"
    kitchen
  end
end

def livingroom
  puts "You are now in the living room. You see a crumpled up receipt, a nice chair, and a door."
  puts "What do you do?"

  print "> "
  answer = $stdin.gets.chomp

  if answer.downcase.include?("receipt")
    puts "You play soccer with the receipt and end up chasing it back into the kitchen."
    kitchen
  elsif answer.downcase.include?("chair")
    puts "You try sharpening your claws on the nice chair but are immediately caught."
    puts "This is why we can't have nice things. The adventure ends."
    exit(0)
  elsif answer.downcase.include?("door")
    puts "You open the door with your oversized cat fists."
    bedroom
  else
    puts "Whatchu say??"
    livingroom
  end
end

def bedroom
  puts "You are now in the bedroom. You see a bed, a backpack, and another door."

  print "> "
  answer = $stdin.gets.chomp

  if answer.downcase.include?("bed")
    puts "You jump up on the bed and lick your downstairs for a half hour."
    puts "You lose yourself in the moment, forget you were on an adventure, and pass out."
    exit(0)
  elsif answer.downcase.include?("backpack")
    puts "You swat at and jump around the backpack, then proudly roost on it like a chicken."
    puts "You never want to leave the backpack again, so you voluntarily quit the adventure."
  elsif answer.downcase.include?("door")
    puts "You sprint suddenly through the open door."
    closet
  else
    puts "Whatchu say??"
    bedroom
  end
end

def closet
  puts "You are now in the closet. You see a high shelf and a laundry basket."
  puts "What do you do?"

  print "> "
  answer = $stdin.gets.chomp

  if answer.downcase.include?("shelf")
    puts "You climb up onto the high shelf and discover a fluffy Chewbacca backpack."
    puts "You are magically drawn to it and spend hours slapping it and pulling out fur."
    puts "You fall asleep in your high shelf kingdom, having accomplished a good day's work."
    exit(0)
  elsif answer.downcase.include?("basket")
    puts "You fall asleep in the laundry basket in a tight ball and the adventure ends."
    exit(0)
  else
    puts "Whatchu say??"
    bedroom
  end
end

def start
  puts "Welcome to the apartment treasure hunt!"
  puts "May the odds be ever in your favor..."
  puts "Are you a cat?"

  print "> "
  answer = $stdin.gets.chomp

  if answer.downcase == "meow"
    puts "Purrfect! Let's get started"
    kitchen
  else
    puts "Sorry, this game is for cats only."
    exit(0)
  end
end

start

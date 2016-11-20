class EntryWay
  def enter
    puts "\nWELCOME, Prince Hamlet. You've landed in the Entry Way."
    puts "You see a nice scratching pad mounted on the wall to your right."
    puts "Which area of the scratching pad do you sharpen your princely claws?"
    print "> "
    response = gets.chomp.downcase

    if response.include? "left"
      puts "Excellent choice! You must have somehow sensed that the right side is evil."
      puts "Clad with freshly sharpened claws, you saunter into the Kitchen"
      return 'kitchen'
    elsif response.include? "right"
      puts "AHHHGHHH The right side is evil!"
      return 'game_over'
    else
      puts "DOES NOT COMPUTE"
      return 'entry_way'
    end
  end
end

class Kitchen
  def enter
    puts "You are in the kitchen. You see a counter, a bracelet, and another room."
    puts "What do you do?"
    print "> "
    response = gets.chomp.downcase

    if response.include? "counter"
      puts "You jump up on the counter and lick bacon grease off a cast iron pan."
      puts "Alix sees you and claps loudly. Ahhh! The adventure ends."
      return 'game_over'
    elsif response.include? "bracelet"
      puts "You fling the bracelet into the air repeatedly for an hour and it breaks."
      puts "This is why we can't have nice things. The adventure ends."
      return 'game_over'
    elsif response.include? "room"
      puts "You saunter casually into the next room."
      return 'living_room'
    else
      puts "Whatchu say??"
      return 'kitchen'
    end
  end
end

class LivingRoom
  def enter
    puts "You are now in the living room. You see a crumpled up receipt, a nice chair, and a door."
    puts "What do you do?"
    print "> "
    response = gets.chomp.downcase

    if response.include? "receipt"
      puts "You play soccer with the receipt and end up chasing it back into the kitchen."
      return 'kitchen'
    elsif response.include? "chair"
      puts "You try sharpening your claws on the nice chair but are immediately caught."
      return 'game_over'
    elsif response.include? "door"
      puts "You open the door with your oversized cat fists."
      return 'bedroom'
    else
      puts "Whatchu say??"
      return 'living_room'
    end
  end
end

class Bedroom
  def enter
    puts "You are now in the bedroom. You see a bed, a backpack, and another door."
    print "> "
    response = gets.chomp.downcase

    if response.include? "bed"
      puts "You jump up on the bed and lick your downstairs for a half hour."
      puts "You lose yourself in the moment, forget you were on an adventure, and pass out."
      return 'game_over'
    elsif response.include? "backpack"
      puts "You swat at and jump around the backpack, then proudly roost on it like a chicken."
      puts "You never want to leave the backpack again, so you voluntarily quit the adventure."
      return 'game_over'
    elsif response.include? "door"
      puts "You sprint suddenly through the open door."
      return 'closet'
    else
      puts "Whatchu say??"
      return 'bedroom'
    end
  end
end

class Closet
  def enter
    puts "You are now in the closet. You see a high shelf and a laundry basket."
    puts "What do you do?"
    print "> "
    response = gets.chomp.downcase

    if response.include? "shelf"
      puts "You climb up onto the high shelf and discover a fluffy Chewbacca backpack."
      puts "You are magically drawn to it and spend hours slapping it and pulling out fur."
      puts "You fall asleep in your high shelf kingdom, having accomplished a good day's work."
      return 'win'
    elsif response.include? "basket"
      puts "You fall asleep in the laundry basket in a tight ball and the adventure ends."
      return 'game_over'
    else
      puts "Whatchu say??"
      return 'closet'
    end
  end
end

class GameOver
  @@Messages = [
    "The adventuring life isn't for you.",
    "You don't have what it takes, you obese weasel.",
    "YOU LOSE HA",
    "Your tiny kitty brain fails again.",
    "LOO HOO HOOOOOOSER",
    "This is why we can't have nice things. The adventure ends."
  ]

  def enter
    puts @@Messages[rand(0..(@@Messages.length-1))]
    exit(0)
  end
end

class Win
  def enter
    puts "YOU WON! I never doubted you for a second, young Kitty Prince."
    exit(0)
  end
end

class Game

  @@scenes = {
    'entry_way' => EntryWay.new,
    'kitchen' => Kitchen.new,
    'living_room' => LivingRoom.new,
    'bedroom' => Bedroom.new,
    'closet' => Closet.new,
    'game_over' => GameOver.new,
    'win' => Win.new
  }

  def play()
    current_scene = @@scenes['entry_way']

    while true
      next_scene_name = current_scene.enter()
      current_scene = @@scenes[next_scene_name]
    end
  end
end

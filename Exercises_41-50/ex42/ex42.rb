## Animal is-a object look at the extra credit
class Animal
end

## Creates a class called Dog, which inherits from Animal
class Dog < Animal

  def initialize(name)
    ## Sets an individual dog's name when created
    @name = name
  end
end

## Creates a class called Cat, which inherits from Animal
class Cat < Animal

  def initialize(name)
    ## Sets an individual cat's name when created
    @name = name
  end
end

## Creates a class called Person
class Person

  def initialize(name)
    ## Sets an individual person's name when created

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## Creates an Employee class, which inherits from Person
class Employee < Person

  def initialize(name, salary)
    ## takes name setter from Person class
    super(name)
    ## sets salary for individual Employee
    @salary = salary
  end
end

## Creates Fish class
class Fish
end

## Creates a Salmon class, which inherits from Fish
class Salmon < Fish
end

## Creates a Halibut class, which inherits from Fish
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## mary has-a pet named satan
mary.pet = satan

## frank is-a Employee
frank = Employee.new("Frank", 120000)

## frank has-a pet named rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()

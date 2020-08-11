require "pry"
class Owner
  # code goes here
  attr_accessor
  attr_reader :species, :name
@@all = []
def initialize(name)
@species = "human"
@name = name
save
end

def save
  @@all << self
end

def say_species
  "I am a #{@species}."
end

def self.all
  @@all
end

def self.count
@@all.length
end

def self.reset_all
@@all = []
end

def cats
  my_cats = Cat.all.select {|cat| cat.owner == self}
  # binding.pry
end

def dogs
  my_dogs = Dog.all.select {|dog| dog.owner == self}
end

def buy_cat(name)
new_cat = Cat.new(name, self)
end

def buy_dog(name)
new_dog = Dog.new(name, self)
end

def walk_dogs
dogs.each {|dog| dog.mood = "happy"}
end

def feed_cats
cats.each {|cat| cat.mood = "happy"}
end

def sell_pets
pets = cats + dogs
# binding.pry
pets.each do |pet|
  pet.mood = "nervous"
  pet.owner = nil
end
end

def list_pets
dogs_num = dogs.length
cats_num = cats.length
"I have #{dogs_num} dog(s), and #{cats_num} cat(s)."
end

end

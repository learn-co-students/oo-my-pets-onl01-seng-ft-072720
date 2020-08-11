require "pry"
class Owner
  attr_accessor :pets
  attr_reader :name, :species 
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self 
  end

  def say_species 
    "I am a #{self.species}."
  end
  
  def self.all 
    @@all 
  end
  
  def self.count 
    @@all.count 
  end
  
  def self.reset_all 
    @@all.clear 
  end
  
  def cats 
    Cat.all.select {|c| c.owner == self}
  end
  
  def dogs
    Dog.all.select {|d| d.owner == self}
  end
  
  def buy_cat(name) 
    new_cat = Cat.new(name, self)
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name, self)
  end
  
  def walk_dogs 
    self.dogs.collect {|d| d.mood = "happy"}
  end
  
  def feed_cats 
    self.cats.collect {|c| c.mood = "happy"}
  end
  
  def pets 
    self.pets = self.dogs + self.cats 
  end
  
  def sell_pets 
     self.pets.collect {|p| p.mood = "nervous"}
     self.pets.each {|o| o.owner = nil}
  end
  
  def list_pets 
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
    
  
end
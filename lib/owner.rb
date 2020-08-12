require "pry"
class Owner
  
  attr_reader :name, :species
  attr_accessor :cats
  
  @@all = []
  
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def self.all 
   @@all
  end
  
  def self.count
    self.all.length
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def cats 
    Cat.all.select {|c| c.owner == self }
    # binding.pry
  end
  
  def dogs 
    Dog.all.select {|d| d.owner == self}
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    self.dogs.each do |dog|
    self.dogs.delete(dog)
    dog.owner = nil 
    dog.mood = "nervous"
  end
    self.cats.each do |cat|
    self.cats.delete(cat)
    cat.owner = nil 
    cat.mood = "nervous" 
  end
end

  def list_pets
    return "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
end














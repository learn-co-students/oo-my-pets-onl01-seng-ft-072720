class Owner
  
  attr_reader :species, :name
  attr_accessor :pets, :cats, :dogs
 
 @@all = []


 
 def initialize(name)
   @name = name
   @species = "human"
   @@all << self
   
   
 end
  
  def self.all
    @@all
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
   dogs.each do |dog|
    dog.mood = "happy"
    end
  end
  
  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    pets = dogs + cats
    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end
  
  def dogs
    Dog.all.select{|d|d.owner == self}
  end
  
  def cats
    Cat.all.select{|c|c.owner == self}
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
   
  
  
end
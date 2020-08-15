
class Owner
  
 attr_accessor :name, :species 
 
 @@all = []
 
 def initialize(name)
   @name = name 
   @species = ("human")   
   @@all << self 
 end 
 
 def name=(name)
   @name.new = name 
 end 

 def species=species
   @species.name = species
 end 
  
  def say_species
    say_species = ("I am a human.")
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count
    self.all.count
  end 
  
  def self.reset_all
    self.all.clear
  end 
  
  def cats 
    Cat.all.select do |cat|
      cat.owner == self 
    end 
  end 
  
  def dogs 
    Dog.all.select do |dog|
      dog.owner == self 
    end 
  end 
  
  def buy_cat(cat)
    cats << Cat.new(cat, self)
  end 
  
  def buy_dog(dog)
    dogs << Dog.new(dog, self)
  end 
    
  def walk_dogs
    Dog.all.select do |dog|
      dog.mood = "happy"
    end 
  end 
  
  def feed_cats
    Cat.all.select do |cat|
     cat.mood = "happy"
    end 
  end 
  
  def sell_pets 
    dogs.each {|dog| dog.mood = "nervous"; dog.owner = nil } 
    cats.each {|cat| cat.mood = "nervous"; cat.owner = nil }
  end 
   
  def list_pets 
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
    
end






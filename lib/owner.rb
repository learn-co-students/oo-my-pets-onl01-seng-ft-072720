require 'pry'

class Owner
  attr_accessor :dogs, :cats 
  attr_reader :name, :species 
 
 @@all = []

  
  def initialize(name)
    @name = name
    @species = species
    @species = "human"
    @dogs = []
    @cats = []
    save
  end 


#can say its species 
  def say_species
    "I am a #{@species}."
  end 


#returns all instances of Owner that have been created
  def self.all
    @@all
  end 


#returns the number of owners that have been created 
  def self.count 
  @@all.count 
    end 
    

#returns the number of owners that have been created 
  def self.reset_all 
    @@all.clear 
  end
  
  def cats 
    Cat.all.select{|cat| cat.owner == self}
  end 
  
  def dogs 
    Dog.all.select{|dog| dog.owner == self}
  end 
  
#can buy a cat that is an instance of the Cat class, knows about its cats
  def buy_cat(name)
    #passing a name and this owner object into the cat object
    cat = Cat.new(name, self) 
    @cats << cat
    
  end 
  
  
#can buy a dog that is an instance of the Dog class, knows about its dogs
  def buy_dog(name)
    dog = Dog.new(name, self)
    @dogs << dog
  end


#walks the dogs which makes the dogs' moods happy
  def walk_dogs 
    self.dogs.each do |dog|
      dog.mood = "happy"
    end 
  end 
  
  
#feeds cats which makes the cats' moods happy 
  def feed_cats 
    self.cats.each do |cat|
      cat.mood = "happy"
   end 
  end 
  
#can sell all its pets, which makes them nervous can sell all its pets, which leaves them without an owner
  def sell_pets 
    self.dogs.each do |dog|
    dog.owner = nil
    dog.mood = "nervous"
    self.dogs.delete(dog)
    end 
   self.cats.each do |cat|
    cat.owner = nil
    cat.mood = "nervous"
    self.cats.delete(cat)
    end
  end 
  
  
# can list off its pets
  def list_pets 
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
  
  def save 
  @@all << self 
  end 






end
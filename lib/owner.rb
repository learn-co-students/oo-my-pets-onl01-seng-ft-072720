require 'pry'

class Owner
  
  attr_reader :name, :species # cannot change owner or species w/ attr_reader
  
  @@all = []
  
  def initialize(name) #initializes with a name
    @name = name
    @species = "human" #initializes with a species = human
    @@all << self #return all instances of owner that have been created 
  end
  
  def say_species
    return "I am a #{self.species}." #can specify it's species when created of .self
  end
  
  def self.all 
   @@all #return all instances of owner that have been created 
  end
  
  
  def self.count
    @@all.count # or .length - returns the number of owners created 
  end
  
  def self.reset_all
    @@all.clear # resets or clears the array to []
  end
  
  def cats 
    Cat.all.select {|specific_cat| specific_cat.owner == self}#returns cat(s) that belong to a owner
  end
  
  def dogs 
    Dog.all.select {|specific_dog| specific_dog.owner == self}#returns cat(s) that belong to a owner
  end
  
  def buy_cat(name)
    Cat.new(name, self)#creates new cat w/ name. self = owner object as arg for owner
  end
    
    def buy_dog(name)
      Dog.new(name, self)#creates new dog w/ name. self = owner object as arg for owner
    end
    
    def walk_dogs
      self.dogs.each {|dog_walk| dog_walk.mood = "happy"}#when this method is called will change dog's mood to happy. each owner's dog will be called and mood will be changed.
    end
    
    def feed_cats
      self.cats.each {|feed_cat| feed_cat.mood = "happy"}#when this method is called will change cat's mood to happy. each owner's cat will be called and mood will be changed.
    end
    
    def sell_pets
      self.dogs.each do |sell_dog|# owner(self) sells each of their dogs
        sell_dog.owner = nil  # dog's owner = nil
        sell_dog.mood = "nervous" # changes dog's mood to nervous
      end
      self.cats.each do |sell_cat| # cat's owner(self) sells each of their cats
        sell_cat.owner = nil  # cat's owner is nil
        sell_cat.mood = "nervous" #changes cat's mood
      end
      end
      
      def list_pets
        return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."#interpolates owner to the amount of their specific pets by using the dogs/cats methods above
      end
  
end
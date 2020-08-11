require 'pry'
class Owner
  
  attr_accessor   
  attr_reader :name, :species

    @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def name
     @name.freeze
   end
   
   def species
     @species.freeze
   end
   
   def say_species
      "I am a #{@species}."
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
     Cat.all.select {|cat| cat.owner == self}
   end
   
   def dogs 
      Dog.all.select {|dog| dog.owner == self}
    end
    
    def buy_cat(cat)
    cats << Cat.new(cat,self)
  end
  
  def buy_dog(dog)
    dogs << Dog.new(dog,self)
  end
  
  def walk_dogs
    dogs.collect{|dog| dog.mood = "happy"}
 end 
 
 def feed_cats
   cats.collect{|cat| cat.mood = "happy"}
 end 
 
 def sell_pets
   pets = cats + dogs 
   pets.collect do |pet| 
     pet.mood = "nervous"
     pet.owner = nil
   end
 end 
 
 def list_pets
   "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
 end 
 
end

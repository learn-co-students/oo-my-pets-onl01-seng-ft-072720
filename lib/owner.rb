class Owner
 attr_accessor :cats, :dogs
 attr_reader :species, :name
 
 @@all = [] 
 
 def initialize(name)
   @name = name 
   @species = "human"
   @@all << self 
   @cats = []
   @dogs = []
   
  
 end 
 
 def self.all 
   @@all 
 end 
 
   def say_species 
   "I am a #{@species}."
 end 
 
 def self.count 
   self.all.count 
 end 
 
 def self.reset_all 
   self.all.clear
 end 
 
 def cats
    Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end 
  
 def buy_cat(cat)
    cats << Cat.new(cat,self)
  end
  
  def buy_dog(dog)
    dogs << Dog.new(dog,self)
  end

  
  def walk_dogs 
    self.dogs.each {|dog| dog.mood = "happy"}
  end 
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end

 def sell_pets 
   self.cats.each do |cat|
      self.cats.delete(cat)
      cat.owner = nil
      cat.mood = "nervous"
    end 
    self.dogs.each do |dog|
      self.dogs.delete(dog)
      dog.owner = nil
      dog.mood = "nervous"
    end
  end
    
 def list_pets
   "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
 end 
 

 
end
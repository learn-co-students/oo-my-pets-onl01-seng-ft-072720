require 'pry'

class Owner
    attr_reader :name, :species, :cat 
    
    @@all = []
    
    def initialize (name_arg)
      @name=name_arg
      @species="human" 
      @@all << self 
    end
    
    def say_species
     "I am a #{@species}."  
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
      Cat.all.select { |cats| cats.owner == self }
    end 
    
    def dogs 
      Dog.all.select { |dogs| dogs.owner == self }
    end 
    
    def buy_cat(name)
      Cat.new(name, self)
    end 
    
    def buy_dog(name)
      Dog.new(name, self)
    end 
    
    def walk_dogs
      Dog.all.map { |dog| dog.mood="happy" }  
    end 
    
    def feed_cats
      Cat.all.map { |cats| cats.mood="happy" }   
    end 
    
    def sell_pets
      pets = Dog.all + Cat.all 
      pets.map do |pets| 
      pets.mood="nervous" 
      pets.owner=nil 
      end 
    end 
    
    def list_pets 
      "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
    end 
      
    


    




end
#binding.pry#
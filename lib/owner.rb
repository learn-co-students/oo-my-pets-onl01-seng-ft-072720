require 'pry'
class Owner
  # code goes here
  attr_accessor :cats, :dogs 
  attr_reader :name, :species
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all.push(self)
  end
  
  def say_species
    return "I am a human."
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
   #  binding.pry 
    catss = Cat.all.find_all {|cat| cat.owner == self}
  end 
  
    def dogs
   #  binding.pry 
    dogss = Dog.all.find_all {|dog| dog.owner == self}
  end 
  
  def buy_cat(name)
    new_cat = Cat.new(name, self)
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name, self)
  end
  
  def walk_dogs
    own_dogs = dogs 
    own_dogs.map do |dog| 
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    own_cats = cats 
    own_cats.map do |cat| 
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    own_dogs = dogs 
    own_dogs.map do |dog| 
      dog.mood = "nervous"
      dog.owner = nil 
    end
     own_cats = cats 
    own_cats.map do |cat| 
      cat.mood = "nervous"
      cat.owner = nil 
    end
  end
  
  def list_pets
    count_dogs = dogs.length
    count_cats = cats.length
    return "I have #{count_dogs} dog(s), and #{count_cats} cat(s)."
  end
  
end
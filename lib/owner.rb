require 'pry'

class Owner
attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end

  def say_species
    return "I am a #{self.species}."  
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
    Cat.all.select do |kitty| kitty.owner == self
      end
    end

  def dogs
    Dog.all.select do |puppy| puppy.owner == self
    end
  end

  def buy_cat(cat_name)
    self.cats << Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    self.dogs << Dog.new(dog_name, self)
  end

  def walk_dogs
    self.dogs.each do |dog| 
      dog.mood = "happy"
    end
  end

  def feed_cats
    self.cats.each do |cat| 
      cat.mood = "happy"
    end
  end

  def sell_pets
    self.dogs.each do |dog| 
      dog.mood = "nervous"
      dog.owner = nil
    end

    self.cats.each do |cat| 
      cat.mood = "nervous"
      cat.owner = nil
    end

    def list_pets
      "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
    end

  end


end

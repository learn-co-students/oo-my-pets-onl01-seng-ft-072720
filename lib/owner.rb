require 'pry'

class Owner
  # attr_accessor :cats
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def cats
    Cat.all.select{|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def buy_cat(cat_name) #can but a cat that's an instance of a cat class
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name) #can but a dog that's an instance of a dog class
    Dog.new(dog_name, self)
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
    dog_count = self.dogs.count
    cat_count = self.cats.count
    "I have #{dog_count} dog(s), and #{cat_count} cat(s)."
  end  


end

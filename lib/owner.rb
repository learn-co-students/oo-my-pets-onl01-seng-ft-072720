class Owner
  attr_reader :species, :name
  attr_accessor

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    save
  end

  def save
    @@all << self
  end

  def cats
    Cat.all.select{|n| n.owner == self}
  end

  def dogs
    Dog.all.select{|n| n.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    dogs.each{|d| d.mood = "happy"}
  end

  def feed_cats
    cats.each{|d| d.mood = "happy"}
  end

  def sell_pets
    dogs.each{|d| d.mood = "nervous" ; d.owner = nil}
    cats.each{|c| c.mood = "nervous" ; c.owner = nil}
  end

  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end

  def say_species
    "I am a #{self.species}."
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


end

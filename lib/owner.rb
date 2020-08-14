class Owner

    @@all = []

    attr_accessor :pets
    attr_reader :name, :species

    def initialize(name)
       @species = "human"
       @name = name
       #@pets = {:dogs => [], :cats => []}
       @@all << self
    end

    def say_species
       "I am a #{@species}."
    end

    def cats
      Cat.all.select {|c| c.owner == self}
    end

    def dogs
      Dog.all.select {|d| d.owner == self}
    end

    def buy_cat(new_cat)
        Cat.new(new_cat, self)
    end

    def buy_dog(new_dog)
        Dog.new(new_dog, self)
    end

    def walk_dogs
        dogs.each {|d| d.mood = "happy"}
    end

    def feed_cats
       cats.each {|c| c.mood = "happy"}
    end

    def sell_pets
        Dog.all.each {|d| d.mood = "nervous"
          d.owner = nil}
        Cat.all.each {|c| c.mood = "nervous"
          c.owner = nil}
  end


    def list_pets
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end

   def self.count
     @@all.count
   end

   def self.all
     @@all
   end

   def self.reset_all
     @@all.clear
   end
end

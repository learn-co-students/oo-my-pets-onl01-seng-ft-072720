class Dog

  attr_accessor :owner, :mood
  attr_reader :name

  @@dogs = []

# instance methods

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@dogs << self
    owner.dogs << self
  end

# class methods

  def self.all()
    @@dogs
  end

end
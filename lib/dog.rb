class Dog
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name, :species

  @@all = []
  def initialize(name, owner)
  @name = name
  @owner = owner
  @mood = "nervous"
  @species = "dog"
  save
  end

  def save
    @@all << self
  end

  def self.all
  @@all
  end

  end

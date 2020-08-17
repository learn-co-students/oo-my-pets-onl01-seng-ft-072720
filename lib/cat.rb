class Cat

  attr_accessor :owner, :mood
  attr_reader :name

  @@cats = []

# instance methods

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@cats << self
    owner.cats << self
  end

# class methods

  def self.all()
    @@cats
  end

end
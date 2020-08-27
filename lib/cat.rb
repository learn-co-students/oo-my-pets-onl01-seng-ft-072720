class Cat
  attr_accessor :mood, :owner
  attr_reader :name
  @@cats = []

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@cats << self
  end

  def self.all
    @@cats
  end
end

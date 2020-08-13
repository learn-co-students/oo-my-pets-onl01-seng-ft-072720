require "pry"

class Cat
  @@all = []
  attr_reader :name
  attr_accessor :owner, :mood
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    # @owner.cats << self
    save
    # binding.pry
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
end
# class Cat
#   # code goes here
#   attr_accessor :mood, :owner
#   attr_reader :name
#
#   @@all = []
#
#   def initialize(name, owner)
#     @name = name
#     @mood = "nervous"
#     @owner = owner
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
# end

require 'pry'
class Dog
 
 attr_accessor :mood, :owner
 attr_reader :name
 
   @@all = []
 
   def initialize(name, owner)
    @name = name 
    @owner = Owner.new(owner).name
    @mood = "nervous"
    @@all << self
  end
  
  def name 
    @name.freeze
  end 
  
  def self.all 
    @@all 
  end
 
end
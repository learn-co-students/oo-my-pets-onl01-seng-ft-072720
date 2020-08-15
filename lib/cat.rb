class Cat
  
  attr_accessor :mood 
  attr_writer :owner
  attr_reader :name
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner 
    @mood = "nervous"
    @@all << self 
  end 
  
  def owner
    @owner
  end 
  
  def name=(name)
    @name.new = name 
  end 
  
  def self.all
    @@all 
  end 
  
end

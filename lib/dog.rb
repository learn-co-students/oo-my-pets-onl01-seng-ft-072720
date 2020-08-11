class Dog
  # code goes here
  attr_accessor :owner, :mood 
  attr_reader :name 
  @@all = []
  
  def initialize(name, owner)
    @name = name 
    self.owner = owner
    @mood = "nervous"
    @@all.push(self)
  end
  
def  self.all
  @@all
end
  
  
  
end
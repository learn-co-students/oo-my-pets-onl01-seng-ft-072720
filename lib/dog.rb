class Dog
  
  attr_accessor :owner, :mood # initializes with owner and mood = ""
  attr_reader :name #init with name that cannot be changed
  
  @@all = []
  
  def initialize(name, owner) #init with name and owner
    @name = name 
    @owner = owner
    @mood = "nervous" #created with a nervous mood
    @@all << self # knows all dogs 
  end
  
  def self.all #knows all dogs 
    @@all
  end
  
end
class Dog 
    attr_accessor :owner, :mood 
    attr_reader :name 
  
    @@all = []
    
    def initialize(name_arg,owner_arg)
      @name = name_arg 
      @owner = owner_arg
      @mood = "nervous"
      @@all << self 
    end 
  
    def self.all 
      @@all   
    end
  
  
end 
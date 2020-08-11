class Cat
  # code goes here
attr_accessor :owner, :mood
attr_reader :name, :species

@@all = []
def initialize(name, owner)
@name = name
@owner = owner
@mood = "nervous"
@species = "cat"
save
end

def save
  @@all << self
end

def self.all
@@all
end

end

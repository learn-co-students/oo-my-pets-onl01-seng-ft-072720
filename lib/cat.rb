require 'pry'

class Cat
  
  attr_accessor :owner, :mood # initilizes with a mood = "" and owner 
  attr_reader :name # cannot change cat's name
  
  @@all = []
  
  def initialize(name, owner) #initilizes with name and owner 
    @name = name 
    @owner = owner
    @mood = "nervous" # initilizes with a mood = ""
    @@all << self # adds all cats when created 
  end
  
  def self.all 
    @@all #adds all cats
  end
  
  
end
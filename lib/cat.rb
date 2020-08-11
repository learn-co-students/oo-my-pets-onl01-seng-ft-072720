require "pry"
class Cat

  @@all = []

  attr_accessor :mood, :owner
  attr_reader :name

  def initialize(name, owner)
    # binding.pry
    @name = name
    @mood = "nervous"
    @owner = owner
    save
  end

  # def find_or_create_Owner(owner)
  #   Owner.all.detect{|n| n.name == owner} ? @owner = Owner.all.detect{|n| n.name == owner} : @owner = Owner.new(owner)
  # end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end

class Owner
  @@owners = []
  @@count = 0
  attr_reader :species 
  
  def initialize(species)
    @@owners << self
    @@count += 1
    @species = species
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@count
  end

  def say_species
    "I am a #{@species}."
  end

  
end
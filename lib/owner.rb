class Owner
  @@owners = []
  @@count = 0
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @@owners << self
    @@count += 1
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
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

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
    cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
    dog
  end

  


end

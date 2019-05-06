class Owner

  attr_accessor :name, :pets, :cat, :dog, :fish
  attr_reader :species

  @@all=[]
  @@pets={:cats=>[],:dogs=>[],:fishes=>[]}

  def intitialize(species)
    @species=species
    @name=name
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @@pets
  end

  def buy_cat(cat)
    @@pets[:cats]<<Cat.new(cat)
  end

  def buy_dog(dog)
    @@pets[:dogs]<<Dog.new(dog)
  end

  def buy_fish(fish)
    @@pets[:fishes]<<Fish.new(fish)
  end

  
    
    

  
end
class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def buy_fish(name)
    temp = Fish.new(name)
    temp.owner = self
    @pets[:fishes] << temp
  end

  def buy_cat(name)
    temp = Cat.new(name)
    temp.owner = self
    @pets[:cats] << temp
  end

  def buy_dog(name)
    temp = Dog.new(name)
    temp.owner = self
    @pets[:dogs] << temp
  end

  def walk_dogs
    @pets[:dogs].each {|d| d.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|d| d.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|d| d.mood = "happy"}
  end

  def sell_pets
    @pets.each do |symbol,pet|
      pet.each {|i| i.mood = "nervous"}
      pet.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def self.all
    @@all
  end

end

class Owner
  attr_accessor :pets, :name

  @@owners = []

  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.length
  end

  def species
    "human"
  end

  def say_species
    "I am a human."
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each {|pet| pet.mood = "nervous"}
      pets.clear
    end

    # self.pets[:fishes].each do |fish|
    #   fish.mood = "nervous"
    # end
    # self.pets[:cats].each do |cat|
    #   cat.mood = "nervous"
    # end
    # self.pets[:dogs].each do |dog|
    #   dog.mood = "nervous"
    # end
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
end

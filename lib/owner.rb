require "pry"

class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []
  def initialize(name)
    @name = name
    species(@species)
    @pets = {dogs: [], cats: [], fishes: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@all.size
  end

  def species(species = "human")
    species
  end

  def say_species
    return "I am a #{species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    pets[:dogs] << new_dog
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood ="happy"
    end
  end

  def sell_pets
    #sell all pets
    #makes all pets nervous
    pets[:cats].each do |cat|
      cat.mood ="nervous"
    end
    pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end

    pets.each do |pet_type, names|
      names.each do |name|
        names.delete_at(names.index(name))
      end
      pets.delete(pet_type)
    end
    pets
  end

  def dog_count
    pets[:dogs].count
  end

  def cat_count
      pets[:cats].count
  end

  def fish_count
     pets[:fishes].count
  end

  def list_pets
    #iterate through pets array
      "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end

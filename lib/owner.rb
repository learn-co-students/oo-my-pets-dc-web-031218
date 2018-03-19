require "pry"

class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets

  def self.all
    @@all ||= []
  end

  def self.reset_all
    @@all = []
  end

  def initialize(name)
    @name
    @pets = {fishes: [], cats: [], dogs: []}
    self.class.all << self
  end

  def self.count
    self.all.size
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a human."
  end

  def buy_fish(fish_name)
    pets[:fishes].push(Fish.new(fish_name))
  end

  def buy_cat(cat_name)
    pets[:cats].push(Cat.new(cat_name))
  end

  def buy_dog(dog_name)
    pets[:dogs].push(Dog.new(dog_name))
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

  def sell_pets
    #iterate thru pets and make all moods
    # nervous
    self.pets.each_value do |pet_type|
      pet_type.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets = []
  end

  def list_pets
    num_fish = self.pets[:fishes].size
    num_dogs = self.pets[:dogs].size
    num_cats = self.pets[:cats].size

    "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end
end

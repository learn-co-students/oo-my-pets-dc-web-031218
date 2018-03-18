require_relative './cat.rb'
require_relative './dog.rb'
require_relative './fish.rb'

class Owner

@@all = []

attr_accessor :name, :pets

def initialize(name)
  @name = name
  @pets = {fishes: [], cats: [], dogs: []}
  @@all << self
end

def buy_fish
end

def self.all
  @@all
end

def self.reset_all
  @@all = []
end


def self.count
  @@all.length
end

def species
  "human"
end

def say_species
  "I am a human."
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
  new_cat = Dog.new(name)
  @pets[:dogs] << new_cat
end

def walk_dogs
  @pets[:dogs].collect do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].collect do |cat|
    cat.mood= "happy"
  end
end


def feed_fish
  @pets[:fishes].collect do |fishy|
    fishy.mood = "happy"
  end
end


def sell_pets
  @pets.collect do |pet_specie, pets|
    pets.collect do |pet|
      pet.mood ="nervous"
    end
  pets.clear
  end
end


def list_pets
  "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
end


end 

require 'pry'

class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @@owners = []

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@owners = []
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    self.pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    self.pets.each do |pet, one_pet|
      one_pet.each do |curr_pet|
        curr_pet.mood = 'nervous'
      end
    end
    self.pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    fish_num = 0
    dog_num = 0
    cat_num = 0
    self.pets.each do |key, pets|
      if key.to_s == 'fishes'
        fish_num = pets.length
      elsif key.to_s == 'dogs'
        dog_num = pets.length
      elsif key.to_s == 'cats'
        cat_num = pets.length
      end
    end

    "I have #{fish_num} fish, #{dog_num} dog(s), and #{cat_num} cat(s)."
  end



end

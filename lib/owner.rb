require 'pry'
class Owner
  attr_reader :species
  attr_accessor :name, :pets

# Keeps track of the owners that have been created
def initialize(species)
  # @species = species
  @species = species
  @pets = {fishes: [], cats: [], dogs: []}
   self.class.all << self
end

  def self.all
    @@all ||= []
  end

  def self.reset_all
    # @@all = []
    self.all.clear
  end

  def self.count
    self.all.size
  end
  #
  # def species
  #     @species = "human"
  # end

  def say_species
    "I am a #{@species}."
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
    self.pets.each_value do |animal|
      animal.each do |pet|
        pet.mood = "nervous"
      end
    end
    pets.clear
    # self.pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    fish_count = @pets[:fishes].length
    dog_count = @pets[:dogs].length
    cat_count = @pets[:cats].length
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end

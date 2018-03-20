require_relative 'fish.rb'
require_relative 'cat.rb'
require_relative 'dog.rb'

class Owner
  # code goes here
  @@all = []

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
  	@species = species
  	@pets = {
  		:fishes => [],
  		:dogs => [],
  		:cats => []
  	}
  	self.class.all << self
  end

  def say_species
  	"I am a #{self.species}."
  end

  def buy_fish(fish)
  	fish_obj = Fish.new(fish)
  	self.pets[:fishes] << fish_obj
  end

  def buy_cat(cat)
  	cat_obj = Cat.new(cat)
  	self.pets[:cats] << cat_obj
  end

  def buy_dog(dog)
  	dog_obg = Dog.new(dog)
  	self.pets[:dogs] << dog_obg
  end

  def walk_dogs
  	self.pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
  	self.pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
  	self.pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
  	self.pets.each{|key, arr| arr.each{|pet| pet.mood = "nervous"}}
  	self.pets = {
  		:fishes => [],
  		:dogs =>[],
  		:cats =>[]
  	}
  end

  def list_pets
  	"I have #{self.pets[:fishes].length} fish," + 
  	" #{self.pets[:dogs].length} dog(s)," + 
  	" and #{self.pets[:cats].length} cat(s)."
  	
  end

  #class methpds
  def self.all
  	@@all
  end

  def self.reset_all
  	self.all.clear
  end

  def self.count
  	self.all.length
  end

end


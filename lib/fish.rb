require 'pry'
class Fish
  
  # Mood is changeable
    attr_accessor :mood

  # Cannot change fish name therefore reader
    attr_reader :name

  # Initialzing fish
    def initialize(name)
      @name = name
      @mood = "nervous"
    end

end

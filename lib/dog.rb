require 'pry'
class Dog

# Mood is changeable
  attr_accessor :mood

# Cannot change dog name therefore reader
  attr_reader :name

# Initialzing dog
  def initialize(name)
    @name = name
    @mood = "nervous"
  end

end

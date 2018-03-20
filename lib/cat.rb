require 'pry'
class Cat

# Mood is changeable
  attr_accessor :mood

# Cannot change cat name therefore reader
  attr_reader :name

# Initialzing cat
  def initialize(name)
    @name = name
    @mood = "nervous"
  end

end

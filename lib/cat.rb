
require 'pry'
require_relative './owner.rb'
require_relative './dog.rb'
require_relative './fish.rb'

class Cat

attr_reader :name
attr_accessor :mood

def initialize(name)
  @name = name
  @mood = 'nervous'
end


end

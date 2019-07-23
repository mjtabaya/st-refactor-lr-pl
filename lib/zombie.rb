# frozen_string_literal: true

# Zombie class for testing rspec
class Zombie
  attr_accessor :name, :brain, :hungry

  def initialize
    @name = 'Ash'
    @brain = 0
    @hungry = true
  end

  def hungry?
    @hungry
  end
end

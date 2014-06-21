class Zombie
  attr_accessor :name
  attr_accessor :brains
  attr_accessor :alive
  attr_accessor :height

  def initialize
    @name = 'Jasper'
    @brains = 0
    @alive = false
    @height = 3
  end

  # predicate method, will return true or false
  def hungry?
    true
  end
end
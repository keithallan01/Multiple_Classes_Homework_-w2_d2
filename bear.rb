class Bear

attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def add_fish(fish)
    @Bear << fish
  end

  def remove_fish(fish)
    index = @fish.index(fish)
    @fish.slice!(index, 1)
  end
end

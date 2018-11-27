class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def add_fish(fish)
    @fish << fish
  end

  def bear_takes_fish_from_river(river)
  end

end
# def remove_fish(fish)
#   index = @fish.index(fish)
#   @fish.slice!(index, 1)
# end

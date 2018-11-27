require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Horace", "Grizzly")
    @river = River.new("Amazon")
    @fish = Fish.new("Wanda")
  end

  def test_bear_has_name
    assert_equal("Horace", @bear.name)
  end

  def test_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_has_empty_stomach
    assert_equal([], @bear.stomach)
  end

  def test_bear_takes_fish_from_river()
    @bear.add_fish(@fish1)
    @bear.add_fish(@fish2)
    @river.remove_fish(@fish1)
    assert_equal(1, @river.fish_count())
  end

  # def test_add_fish_to_bears_stomach()
  #   @bear.add_fish(@fish)
  #   assert_equal(1, @bear.fish_count())
  # end

  # def test_add_two_fish_to_bears_stomach()
  #   @bear.add_fish(@fish1)
  #   @bear.add_fish(@fish2)
  #   assert_equal(2, @bear.fish_count())
  # end


end

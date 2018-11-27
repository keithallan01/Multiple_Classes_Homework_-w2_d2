require("minitest/autorun")
require("minitest/rg")

# require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class RiverTest < Minitest::Test


  def setup
    @river = River.new("Amazon")
    @fish1 = Fish.new("Wanda")
    @fish2 = Fish.new("Billy")
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_add_one_fish_to_river()
    @river.add_fish(@fish1)
    assert_equal(1, @river.fish_count())
  end

  def test_add_two_fish_to_river()
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    assert_equal(2, @river.fish_count())
  end

  def test_fish_count
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    assert_equal(@river.fish_count, 2)
  end
end

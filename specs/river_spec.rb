require("minitest/autorun")
require("minitest/rg")

# require_relative("../bear")
require_relative("../river")
# require_relative("../fish")


class RiverTest < Minitest::Test


  def setup
    @river = River.new("Amazon")
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  # def test_number_of_fish
  #   assert_equal([])
  # end
end

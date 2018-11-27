require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")

class FishTest < Minitest::Test

  def setup
    @fish1 = Fish.new("Wanda")
    @fish2 = Fish.new("Billy")
  end

  def test_fish_has_name
    assert_equal("Wanda", @fish1.name)
  end
end

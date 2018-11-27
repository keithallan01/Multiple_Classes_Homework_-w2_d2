require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")

class FishTest < Minitest::Test

  def setup
    @fish = Fish.new("Wanda")
  end

  def test_fish_has_name
    assert_equal("Wanda", @fish.name)
  end
end

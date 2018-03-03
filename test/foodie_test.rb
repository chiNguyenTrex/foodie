require "test_helper"
require "foodie/food"

class FoodieTest < Minitest::Test
  def test_broccoli_is_gross
    assert_equal Foodie::Food.portray("Broccoli"), "Gross!"
  end

  def test_anything_else_is_delicious
    assert_equal Foodie::Food.portray("Not Broccoli"), "Delicious!"
  end
end

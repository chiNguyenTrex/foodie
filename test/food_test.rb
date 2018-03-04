require "test_helper"
require "foodie/food"
require "foodie"

class FoodTest < Minitest::Test
  def test_broccoli_is_gross
    assert_equal Foodie::Food.portray("Broccoli"), "Gross!"
  end

  def test_anything_else_is_delicious
    assert_equal Foodie::Food.portray("Not Broccoli"), "Delicious!"
  end

  def test_pluralize_a_word
    assert_equal Foodie::Food.pluralize("Tomato"), "Tomatoes"
    assert_equal Foodie::Food.pluralize("Mouse"), "Mice"
  end
end

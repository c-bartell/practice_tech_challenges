require "test_helper"

class DigitTiersTest < Minitest::Test
  def test_it_exists
    engine = DigitTiers.new

    assert_instance_of DigitTiers, engine
  end

  def test_it_can_return_digits_of_a_number_going_left_to_right
    engine = DigitTiers.new
   
    assert_instance_of String,  engine.sliced_digits(456, 1)
    assert_equal '4', engine.sliced_digits(456, 0) 
    assert_equal '45', engine.sliced_digits(456, 1)
    assert_equal '456', engine.sliced_digits(456, 2)
  end

  def test_it_can_return_an_array_of_tiered_digits
    engine = DigitTiers.new
    actual = engine.tiers(456)
    expected = (['4', '45', '456'])

    assert_equal expected, actual
    
    actual = engine.tiers(46278)
    expected = ['4', '46', '462', '4627', '46278']
   
    assert_equal expected, actual
  end  
end

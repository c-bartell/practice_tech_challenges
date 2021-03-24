require "test_helper"

class CountBitsTest < Minitest::Test
  def setup
    @engine = CountBits.new
  end

  def test_it_exists

    assert_instance_of CountBits, @engine
  end

  def test_it_can_turn_an_int_into_binary
    expected = '10011010010'
    actual = @engine.b_string(1234)

    assert_equal expected, actual
  end

  def test_it_can_count_bits

    assert_equal 0, @engine.count_bits(0)
    assert_equal 1, @engine.count_bits(4)
    assert_equal 3, @engine.count_bits(7)
    assert_equal 2, @engine.count_bits(9)
    assert_equal 2, @engine.count_bits(10) 
  end
end

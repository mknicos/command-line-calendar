require "minitest/autorun"
require "calc"

class TestCalc < MiniTest::Unit::TestCase
  def test_test_works
    assert_equal true, true
  end
  
  def test_instance_of_calc
    x = Calc.new
    assert_instance_of Calc, x
  end

  def test_wrong_month_input
    assert_raises ArgumentError do
      Calc.num_of_days_in_month(123)
    end
  end

  def test_negative_month
    assert_raises ArgumentError do
      Calc.num_of_days_in_month(-1)
    end
  end
end

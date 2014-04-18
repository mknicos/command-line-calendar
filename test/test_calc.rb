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

  def test_january
    days = Calc.num_of_days_in_month(1, 2000)
    assert_equal 31, days
  end

  def test_april
    days = Calc.num_of_days_in_month(4, 2000)
    assert_equal 30, days
  end

  def test_march
    days = Calc.num_of_days_in_month(3, 2000)
    assert_equal 31, days
  end

  def test_may
    days = Calc.num_of_days_in_month(5, 1902)
    assert_equal 31, days
  end

  def test_june
    days = Calc.num_of_days_in_month(6, 1902)
    assert_equal 30, days
  end

  def test_july
    days = Calc.num_of_days_in_month(7, 1902)
    assert_equal 31, days
  end

  def test_august
    days = Calc.num_of_days_in_month(8, 1950)
    assert_equal 31, days
  end

  def test_sept
    days = Calc.num_of_days_in_month(9, 1500)
    assert_equal 30, days
  end

  def test_oct
    days = Calc.num_of_days_in_month(10, 2300)
    assert_equal 31, days
  end

  def test_nov
    days = Calc.num_of_days_in_month(11, 2300)
    assert_equal 30, days
  end

  def test_dec
    days = Calc.num_of_days_in_month(12, 2300)
    assert_equal 31, days
  end
  #--------Is Leap Year?-----------#

  def test_non_leap_year
    leap_year = Calc.is_leap_year?(2013)
    assert_equal false, leap_year
  end

  def test_non_leap_year_2
    leap_year = Calc.is_leap_year?(1805)
    assert_equal false, leap_year
  end
  
  def test_non_leap_year_3
    leap_year = Calc.is_leap_year?(1900)
    assert_equal false, leap_year
  end

  def test_non_leap_year_4
    leap_year = Calc.is_leap_year?(2100)
    assert_equal false, leap_year
  end

  def test_leap_year_1
    leap_year = Calc.is_leap_year?(2000)
    assert_equal true, leap_year
  end

  def test_leap_year_2
    leap_year = Calc.is_leap_year?(1904)
    assert_equal true, leap_year
  end
  
  def test_leap_year_3
    leap_year = Calc.is_leap_year?(1880)
    assert_equal true, leap_year
  end

  def test_leap_year_4
    leap_year = Calc.is_leap_year?(2400)
    assert_equal true, leap_year
  end
  
  def test_leap_year_1800
    leap_year = Calc.is_leap_year?(1800)
    assert_equal false, leap_year
  end

  def test_leap_year_3000
    leap_year = Calc.is_leap_year?(3000)
    assert_equal false, leap_year
  end
end

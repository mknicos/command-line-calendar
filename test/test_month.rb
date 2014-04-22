require "minitest/autorun"
require "month"

class TestMonth < MiniTest::Unit::TestCase

  #---------Inititialize--------------#
  def test_month_clas
    x = Month.new(2, 1988)
    assert_instance_of Month, x
  end

  def test_month_instance_var
    x = Month.new(2, 1988)
    assert_equal 2, x.month
  end

  def test_year_instance_variable
    x = Month.new(2, 1988)
    assert_equal 1988, x.year
  end

  def test_month_title_long_name
    x = Month.new(2, 1998)
    expected = '   February 1998'
    actual = x.month_title
    assert_equal expected, actual
  end

  def test_month_title_short_name
    x = Month.new(4, 1998)
    expected = '     April 1998'
    actual = x.month_title
    assert_equal expected, actual
  end
  #-----------num of days in month -------------

  def test_january
    jan = Month.new(1,2000)
    days = jan.num_of_days_in_month
    assert_equal 31, days
  end

  def test_april
    apr = Month.new(4, 2000)
    days = apr.num_of_days_in_month
    assert_equal 30, days
  end

  def test_march
    mar = Month.new(3, 2000)
    days = mar.num_of_days_in_month
    assert_equal 31, days
  end

  def test_may
    may = Month.new(5, 2000)
    days = may.num_of_days_in_month
    assert_equal 31, days
  end

  def test_june
    jun = Month.new(6, 1902)
    days = jun.num_of_days_in_month
    assert_equal 30, days
  end

  def test_july
    july = Month.new(7, 1902)
    days = july.num_of_days_in_month
    assert_equal 31, days
  end

  def test_august
    august = Month.new(8, 1950)
    days = august.num_of_days_in_month
    assert_equal 31, days
  end

  def test_sept
    sept = Month.new(9, 1500)
    days = sept.num_of_days_in_month
    assert_equal 30, days
  end

  def test_oct
    oct = Month.new(10, 2300)
    days = oct.num_of_days_in_month
    assert_equal 31, days
  end

  def test_nov
    nov = Month.new(11, 2300)
    days = nov.num_of_days_in_month
    assert_equal 30, days
  end

  def test_dec
    dec = Month.new(12, 2300)
    days = dec.num_of_days_in_month
    assert_equal 31, days
  end
  #--------Is Leap Year?-----------#

  def test_non_leap_year
    m1 = Month.new(2, 2013)
    leap_year = m1.is_leap_year?
    assert_equal false, leap_year
  end

  def test_non_leap_year_2
    m1 = Month.new(1, 1805)
    leap_year = m1.is_leap_year?
    assert_equal false, leap_year
  end
  
  def test_non_leap_year_3
    m1 = Month.new(2, 1900)
    leap_year = m1.is_leap_year?
    assert_equal false, leap_year
  end

  def test_non_leap_year_4
    m1 = Month.new(3, 2100)
    leap_year = m1.is_leap_year?
    assert_equal false, leap_year
  end

  def test_leap_year_1
    m1 = Month.new(4, 2000)
    leap_year = m1.is_leap_year?
    assert_equal true, leap_year
  end

  def test_leap_year_2
    m1 = Month.new(3, 1904)
    leap_year = m1.is_leap_year?
    assert_equal true, leap_year
  end
  
  def test_leap_year_3
    m1 = Month.new(4, 1880)
    leap_year = m1.is_leap_year?
    assert_equal true, leap_year
  end

  def test_leap_year_4
    m1 = Month.new(1, 2400)
    leap_year = m1.is_leap_year?
    assert_equal true, leap_year
  end
  
  def test_leap_year_1800
    m1 = Month.new(3, 1800)
    leap_year = m1.is_leap_year?
    assert_equal false, leap_year
  end

  def test_leap_year_3000
    m1 = Month.new(6, 3000)
    leap_year = m1.is_leap_year?
    assert_equal false, leap_year
  end

end

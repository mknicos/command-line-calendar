require "minitest/autorun"
require "month"

class TestMonth < MiniTest::Unit::TestCase

  def test_month_class
    x = Month.new(2, 1988)
    assert_instance_of Month, x
  end

  def test_month_instance_var
    x = Month.new(2, 1988)
    assert_equal 02, x.month
  end

  def test_year_instance_var
    x = Month.new(2, 1988)
    assert_equal 1988, x.year
  end

  def test_month_title_long_month
    x = Month.new(2, 1998)
    expected = '   February 1998'
    actual = x.month_title
    assert_equal expected, actual
  end

  def test_month_short_month
    x = Month.new(4, 1998)
    expected = '     April 1998'
    actual = x.month_title
    assert_equal expected, actual
  end

end

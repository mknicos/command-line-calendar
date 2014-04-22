require "minitest/autorun"
require "month"
require "year"

class TestYear < MiniTest::Unit::TestCase

  #---------Inititialize--------------#
  def test_year_class
    x = Year.new(2000)
    assert_instance_of Year, x
  end

  def test_year_instance_var
    year = Year.new(2000)
    assert_equal 2000, year.year
  end

end

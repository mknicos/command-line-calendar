require "test/unit"
require "month"
require "year"

class TestYear < Test::Unit::TestCase

  #---------Inititialize--------------#
  def test_year_class
    x = Year.new(2000)
    assert_instance_of Year, x
  end

  def test_year_instance_var
    year = Year.new(2000)
    assert_equal 2000, year.year
  end

  #-------------Year-----------------#

  def test_2015
    output = `ruby cal 2015`
    expected = `cal 2015`
    assert_equal expected, output
  end

end

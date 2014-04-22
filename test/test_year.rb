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

  def test_2012
    output = `ruby cal 2012`
    expected = `cal 2012`
    assert_equal expected, output
  end

  def test_1803
    output = `ruby cal 1803`
    expected = `cal 1803`
    assert_equal expected, output
  end

  def test_2014
    output = `ruby cal 2014`
    expected = `cal 2014`
    assert_equal expected, output
  end

  def test_1800
    output = `ruby cal 1800`
    expected = `cal 1800`
    assert_equal expected, output
  end

  def test_1907
    output = `ruby cal 1907`
    expected = `cal 1907`
    assert_equal expected, output
  end

  def test_loop
    skip
    for i in 1800..3000
      assert_equal `ruby cal #{i}`, `cal #{i}`
    end
  end

end

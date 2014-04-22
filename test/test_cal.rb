require "test/unit"

class TestCalIntegration < Test::Unit::TestCase
  def test_jan_2012
    output = `ruby cal 02 2001`
    expected_output = `cal 02 2001`
    assert_equal expected_output, output
  end

  def test_feb_1800
    output = `ruby cal 02 1800`
    expected_output = `cal 02 1800`
    assert_equal expected_output, output
  end

  def test_feb_1803
    output = `ruby cal 02 1803`
    expected_output = `cal 02 1803`
    assert_equal expected_output, output
  end

  def test_march_2014
    output = `ruby cal 03 2014`
    expected_output = `cal 03 2014`
    assert_equal expected_output, output
  end
end

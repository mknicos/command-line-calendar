require "test/unit"

class TestCalIntegration < Test::Unit::TestCase
  def test_jan_2012
    skip
    output = `ruby cal 01 2012`
    expected_output = `cal 01 2012`
    assert_equal expected_output, output
  end

  def test_feb_1800
    skip
    output = `ruby cal 02 1800`
    expected_output = `cal 02 1800`
    assert_equal expected_output, output
  end

  def test_feb_1803
    skip
    output = `ruby cal 02 1803`
    expected_output = `cal 02 1803`
    assert_equal expected_output, output
  end

  def test_march_2014
    skip
    output = `ruby cal 03 2014`
    expected_output = `cal 03 2014`
    assert_equal expected_output, output
  end
end

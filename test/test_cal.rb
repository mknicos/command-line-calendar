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

  def test_july_3000
    output = `ruby cal 07 2014`
    expected_output = `cal 07 2014`
    assert_equal expected_output, output
  end

  def test_dec_1979
    output = `ruby cal 12 1979`
    expected_output = `cal 12 1979`
    assert_equal expected_output, output
  end

  def test_feb_1800
    output = `ruby cal 02 1800`
    expected_output = `cal 02 1800`
    assert_equal expected_output, output
  end

  def test_feb_2012
    output = `ruby cal 02 2012`
    expected_output = `cal 02 2012`
    assert_equal expected_output, output
  end

  def test_july_1800
    output = `ruby cal 07 1800`
    expected_output = `cal 07 1800`
    assert_equal expected_output, output
  end

  def test_dec_2012
    output = `ruby cal 12 2012`
    expected_output = `cal 12 2012`
    assert_equal expected_output, output
  end

  def test_feb_2015
    output = `ruby cal 02 2015`
    expected_output = `cal 02 2015`
    assert_equal expected_output, output
  end

  def test_march_2015
    output = `ruby cal 03 2015`
    expected_output = `cal 03 2015`
    assert_equal expected_output, output
  end
end

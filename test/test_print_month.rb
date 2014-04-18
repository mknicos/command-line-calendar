require "minitest/autorun"
require "print_month"

class TestPrintMonth < MiniTest::Unit::TestCase

  def test_print_month_class
    x = PrintMonth.new()
    assert_instance_of(PrintMonth, x)
  end

  #--------FIND MONTH STRING---------------#
  
  def test_find_month_string_January
    month_string = PrintMonth.find_month_string(1)
    assert_equal 'January', month_string
  end

  def test_find_month_string_March
    month_string = PrintMonth.find_month_string(3)
    assert_equal 'March', month_string
  end

  def test_find_month_string_December
    month_string = PrintMonth.find_month_string(12)
    assert_equal 'December', month_string
  end

#----------Num_spaces_for_title---------------#
  def test_num_spaces_march
    skip
    spaces = PrintMonth.num_spaces_for_title('January')
    assert_equal 5, spaces
  end
end

require "minitest/autorun"
require "print_month"

class TestPrintMonth < MiniTest::Unit::TestCase

  def test_print_month_class
    x = PrintMonth.new()
    assert_instance_of(PrintMonth, x)
  end

end

require "minitest/autorun"
require "zeller"

class TestZeller < MiniTest::Unit::TestCase

  def test_my_test_run
    assert_equal true, 2+2 == 4
  end

 def test_zeller_class
   x = Zeller.new()
   assert_instance_of(Zeller, x)
 end

 def test_month_starts_on_sunday_march_2015
   start_day = Zeller.find_start_day('03', '2015')
   puts start_day
   assert_equal 1, start_day
 end

 def test_month_starts_on_monday_jan_2001
   start_day = Zeller.find_start_day('01', '2001')
   assert_equal 2, start_day
 end

 def test_month_starts_on_tues_march_1980
   start_day = Zeller.find_start_day('04', '1980')
   assert_equal 3, start_day
 end

 def test_month_starts_on_sunday_march_2015
   start_day = Zeller.find_start_day('03', '2015')
   assert_equal 1, start_day
 end

 def test_month_starts_on_thurs
   start_day = Zeller.find_start_day('09', '1988')
   assert_equal 5, start_day
 end

 def test_month_starts_on_fri
   start_day = Zeller.find_start_day('04', '1988')
   assert_equal 6, start_day
 end

 def test_month_starts_on_sat
   start_day = Zeller.find_start_day('11', '2155')
   assert_equal 0, start_day
 end

 def test_month_double_digit
   start_day = Zeller.find_start_day('12', '2100')
   assert_equal 4, start_day
 end

 #-------EXCEPTIONAL CASES---------#
  
 def test_feb_1800
   start_day = Zeller.find_start_day('02', '1800')
   assert_equal 0, start_day
 end

 def test_feb_2012
   start_day = Zeller.find_start_day('02', '2012')
   assert_equal 4, start_day
 end

 def test_feb_2012
   start_day = Zeller.find_start_day('02', '1803')
   assert_equal 3, start_day
 end

 def test_march_2014
   start_day = Zeller.find_start_day('03', '2014')
   assert_equal 0, start_day
 end

 def test_march_2014
   start_day = Zeller.find_start_day('07', '1800')
   assert_equal 3, start_day
 end

end

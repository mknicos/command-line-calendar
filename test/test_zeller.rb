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

 def test_calc_century_number_6
    cent_num = Zeller.calc_century_number(2000)
    asser_equal 6, cent_num
 end

 def test_calc_century_number_4
    cent_num = Zeller.calc_century_number(1900)
    asser_equal 4, cent_num
 end

 def test_calc_century_number_2
    cent_num = Zeller.calc_century_number(2600)
    asser_equal 2, cent_num
 end

 def test_calc_century_number_0
    cent_num = Zeller.calc_century_number(2700)
    asser_equal 0, cent_num
 end

 def test_month_starts_on_sunday_march_2015
   start_day = Zeller.find_start_day(03, 2015)
   assert_equal 0, start_day
 end

 def test_month_starts_on_monday_jan_2001
   start_day = Zeller.find_start_day(01, 2001)
   assert_equal 1, start_day
 end

 def test_month_starts_on_tues_march_201
   start_day = Zeller.find_start_day(04, 1980)
   assert_equal 2, start_day
 end

 def test_month_starts_on_wed_07
   start_day = Zeller.find_start_day(03, 2015)
   assert_equal 0, start_day
 end
end

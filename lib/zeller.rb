class Zeller

  def initialize
  end

  def self.find_start_day(month_input, year_input)
    #day we are looking for is always the first in this case
    first_day_of_month = 1
    month = month_input
    last_two_digits_of_year = year_input[-2..-1]
    century_number = self.calc_century_number(year_input)
  end

  def calc_century_number(century_input)
    
  end
end

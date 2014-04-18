class Calc
  def initialize
  end

  def self.num_of_days_in_month(month, year)
    #expecting a two digit month  and 4 digit year as arguments

    leap_year = self.is_leap_year?(year)

    months_with_31_days = [1,3,5,7,8,10,12]
    months_with_30_days = [4,6,9,11]

    if months_with_31_days.include? month
      return 31
    elsif months_with_30_days.include? month
      return 30
    elsif month == 2 && leap_year
      return 29
    elsif month == 2 && !leap_year
      return 28
    else
      raise NoMonthError, "Month was not found"
    end
  end

  def self.is_leap_year?(year)
    if year % 400 == 0
      return true
    elsif year % 100 == 0
      return false
    elsif year % 4 == 0
      return true
    else
      return false
    end
  end



end

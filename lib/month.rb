class Month
  MONTH_NAMES = ['January','February','March','April','May','June','July','August','September','October','November','December']
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  def num_of_days_in_month
    leap_year = is_leap_year?
    months_with_31_days = [1,3,5,7,8,10,12]
    months_with_30_days = [4,6,9,11]

    if months_with_31_days.include? @month
      return 31
    elsif months_with_30_days.include? @month
      return 30
    elsif @month == 2 && leap_year
      return 29
    elsif month == 2 && !leap_year
      return 28
    else
      raise NoMonthError, "Month was not found"
    end
  end


  def get_weeks

    #each array in this array represents a different week in a month
    weeks = [[],[],[],[],[],[]]

    start_day = Zeller.find_start_day(@month, @year)

    #space at start of fist week of month
    triple_space = "\s\s\s"
    start_day.times { weeks[0] << triple_space}

    day_of_week = start_day
    days_in_month = num_of_days_in_month
    end_of_week = 7
    saturday = 6 #sunday = 0, monday 1, etc...
    day = 1
    week = 0
    double_digits = 10

    days_in_month.times do
      if day < double_digits
        weeks[week] << "\s"
      end
      weeks[week] << day
      unless day_of_week == saturday or day == days_in_month
        weeks[week] << "\s"
      end
      day_of_week += 1
      day += 1
      if day_of_week == end_of_week
        day_of_week = 0
        week += 1
      end
    end
    weeks
  end

  def to_s
    title = month_title.rstrip
    print title + "\n" + "Su Mo Tu We Th Fr Sa" + "\n"
    weeks = get_weeks.each{|week| week << "\n"}
    print weeks.flatten.join()
  end

  def month_title    #for indiv month display
    month_title = (MONTH_NAMES[@month - 1] + ' ' + @year.to_s).center(20)
  end

  def month_name    #for year  display
    month_title = (MONTH_NAMES[@month - 1]).center(20)
  end

  def is_leap_year?
    if @year % 400 == 0
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

class Month
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
    @@month_names = ['January','February','March','April','May','June','July','August','September','October','November','December']
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

  def get_line_arrays

    #each array in this array represents a different line
    day_arrays = [[],[],[],[],[],[]]

    start_day = Zeller.find_start_day(@month, @year)

    #space at start of fist line
    triple_space = "\s\s\s"
    start_day.times { day_arrays[0] << triple_space}

    counter = start_day
    days_in_month = num_of_days_in_month
    day = 1
    index = 0

    days_in_month.times do
      if day < 10
        day_arrays[index] << "\s"
      end
      day_arrays[index] << day
      unless counter == 6 or day == days_in_month
        day_arrays[index] << "\s"
      end
      counter += 1
      day += 1
      if counter == 7
        counter = 0
        index += 1
      end
    end
    return day_arrays
  end

  def to_s
    title = month_title.rstrip
    print title + "\n" + "Su Mo Tu We Th Fr Sa" + "\n"
    lines = get_line_arrays
    lines.each{|arr| arr << "\n"}
    lines.flatten!
    lines = lines.join()
    print lines
  end

  def month_title    #for indiv month display
    month_title = (@@month_names[@month - 1] + ' ' + @year.to_s).center(20)
  end

  def month_name    #for year  display
    month_title = (@@month_names[@month - 1]).center(20)
  end
end

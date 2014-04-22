class Month
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
    day_arrays.each{|arr| arr << "\n"}
    return day_arrays
  end

=begin
  def self.print_month
    week_day_names = %w(Su Mo Tu We Th Fr Sa)
    puts month_string.center(20)
    week_day_names.each {|num| print num + ' '}
    print "\n"

    #put spaces at start of first week
    spaces = []
    start_day.times { spaces << "\s\s\s"}
    
    spaces.each{|space| print space}
    #print days
    counter = start_day
    day = 1

    days_in_month.times do
      if counter > 6
        print "\n"
        counter = 0
      end
      if day < 10
        print ' ' + day.to_s + ' '
      else
        print day.to_s + ' '
      end
      counter += 1
      day += 1
    end
  end
=end

  def month_title
    month_string = ''
    case @month
    when 1
      month_string = 'January'
    when 2
      month_string = 'February'
    when 3
      month_string = 'March'
    when 4
      month_string = 'April'
    when 5
      month_string = 'May'
    when 6
      month_string = 'June'
    when 7
      month_string = 'July'
    when 8
      month_string = 'August'
    when 9
      month_string = 'September'
    when 10
      month_string = 'October'
    when 11
      month_string = 'November'
    when 12
      month_string = 'December'
    end
    month_string = (month_string + ' ' + @year.to_s).center(20).rstrip
  end
end

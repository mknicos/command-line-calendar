class PrintMonth
  def initialize
  end

  def self.print_one_month(month, year, start_day, days_in_month)
    #determine month string
    month_string = self.find_month_string(month) + ' ' + year.to_s
    week_day_names = %w(Su Mo Tu We Th Fr Sa)
    puts month_string.center(20)
    week_day_names.each {|num| print num + ' '}

    #title_string = month_string + ' ' + year.to_s
  end

  def self.num_spaces_for_title(month_string)
    #the month output into command line is 20 characters wide
    #the year will also be displayed with the month, so that
    #is 4 characters plus one for a space between the month and year
    #odd string length months (february) will have one less space in front

    month_length = month_string.length
    year_and_space = 5
    line_width = 20
    title_length = month_length + year_and_space
    return (line_width - title_length) / 2
  end

  def self.find_month_string(month)
    month_string = ''
    case month
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
    month_string
  end
end

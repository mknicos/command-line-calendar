class PrintMonth
  def initialize
  end

  def self.print_one_month(month, year)

    #determine month string
    month_string = ''


  end

  def self.num_spaces_for_title(month)
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

class PrintMonth
  def initialize
  end

  def self.print_one_month(month, year, start_day, days_in_month)
    #determine month string
    month_string = self.find_month_string(month) + ' ' + year.to_s
    
    #print heading
    week_day_names = %w(Su Mo Tu We Th Fr Sa)
    month_string = month_string.center(20).rstrip
    print month_string + "\n"

    #week_day_names.each {|num| print num + ' '}
    print "Su Mo Tu We Th Fr Sa\n"

    #put spaces at start of first week
    spaces = []
    start_day.times { spaces << "\s\s\s"}
    
    spaces.each{|space| print space}
    #print days
    counter = start_day
    day = 1
    last_day = days_in_month
    count_end_of_lines = 0
    days_in_month.times do
      if day < 10 #single digit
        if counter < 6 #sun through fri
          print ' ' + day.to_s + ' '
          counter += 1
        else #saturday
          print ' ' + day.to_s + "\n"
          counter = 0
        end
      else #double digit
        if counter < 6 #sun through fri
          print day.to_s + ' '
          counter += 1
        else #saturday
          print day.to_s + "\n"
          counter = 0
        end
      end
      day += 1
      if counter > 5
      count_end_of_lines += 1
      end
    end
    num_of_line_breaks_needed = 6 - count_end_of_lines
    num_of_line_breaks_needed.times {print "\n"}
  end
end

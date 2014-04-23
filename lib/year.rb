class Year
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def to_s
    year_title = @year.to_s.center(63).rstrip + "\n\n"
    print year_title

    months = [] #multidimensional array with 12 month arrays in it
    months_titles = [] #will hold month names
    current_month = 1 #1 == jan, 2 == feb, etc...
    current_column = 1 #output is three months wide or 3 columns wide

    num_months_in_year = 12
    num_months_in_year.times do
      month = Month.new(current_month, @year)
      months_titles << month.month_name
      month_lines = month.get_line_arrays

      joined_month_lines = []
      month_lines.each {|line| joined_month_lines << line.join()}
      if current_column < 3
        #ensure weeks in months in first two columns fill space to end of month

        week = 4
        last_two_lines_of_month = 2
        last_two_lines_of_month.times do
          width_of_one_month = 20
          spaces_needed = width_of_one_month - (joined_month_lines[week].length)
          spaces_needed.times {joined_month_lines[week] << "\s"}
          week += 1
        end
        current_column += 1 #changes which column the next month will be in
      else #if else hits, this month was in 3rd columns
        current_column = 1
      end
      months << joined_month_lines
      current_month += 1 #changes which month is being looped over
    end

    #print titles and names of weekdays
    row = 0 #represents which row (1...4) the 3 months are on
    num_of_rows = 4
    num_of_rows.times do
      print months_titles[row] + "\s\s" + months_titles[row + 1] + "\s\s" + months_titles[row + 2].rstrip + "\n"
      print "Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa\n"

      #print days of month

      week = 0
      num_of_lines_in_month = 6
      #print 3 months wide, one line at a time
      num_of_lines_in_month.times do
        print months[row + 0][week] + "\s\s" + months[row + 1][week] + "\s\s" + months[row + 2][week] + "\n"
        week += 1
      end
      row += 3
    end

  end


end


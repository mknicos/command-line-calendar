class Year
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def to_s
    year_title = @year.to_s.center(63).rstrip + "\n\n"
    print year_title
    print_months
  end

  def print_months
    twelve_months = [] #multidimensional array with 12 month arrays in it
    months_titles = [] #will hold month names
    month_count = 1 #1 == jan, 2 == feb, etc...
    column_counter = 1 #allows for distinction on third column for new line chars

    12.times do
      month = Month.new(month_count, @year)
      months_titles << month.month_name
      month_lines = month.get_line_arrays

      joined_month_lines = []
      month_lines.each {|line| joined_month_lines << line.join()}
      if column_counter < 3
        #ensure weeks in months in first two columns fill space to end of month
        index = 4
        2.times do
          spaces_needed = 20 - (joined_month_lines[index].length)
          spaces_needed.times {joined_month_lines[index] << "\s"}
          index += 1
        end
        column_counter += 1 #changes which column the next month will be in
      else #if else hits, this month was in 3rd columns
        column_counter = 1
      end
      twelve_months << joined_month_lines
      month_count += 1 #changes which month is being looped over
    end

    #print titles and names of weekdays
    row = 0 #represents which row (1...4) the 3 months are on
    4.times do
      print months_titles[row] + "\s\s" + months_titles[row + 1] + "\s\s" + months_titles[row + 2].rstrip + "\n"
      print "Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa\n"

      #print days of month
      index = 0
      6.times do
        print twelve_months[row + 0][index] + "\s\s" + twelve_months[row + 1][index] + "\s\s" + twelve_months[row + 2][index] + "\n"
        index += 1
      end
      row += 3
    end

  end


end


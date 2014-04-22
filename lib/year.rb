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
    three_months = [] #multidimensional array with 3 arrays of month lines in it
    three_months_titles = [] #will hold month names
    month_count = 1 #1 ==, 2 == feb, etc...
    column_counter = 1 #allows for distinction on third column for new line chars

    12.times do
      month = Month.new(month_count, @year)
      three_months_titles << month.month_name
      month_lines = month.get_line_arrays

      joined_month_lines = []
      month_lines.each {|line| joined_month_lines << line.join()}
      if column_counter < 3
        index = 4
        2.times do
          chars_in_line = joined_month_lines[index].length
          spaces_needed = 20 - chars_in_line
          spaces_needed.times {joined_month_lines[index] << "\s"}
          index += 1
        end
        column_counter += 1
      else
        column_counter = 1
      end
      three_months << joined_month_lines
      month_count += 1 #changes which month is being looped over
    end

    #print titles and names of weekdays
    row = 0
    4.times do
      print three_months_titles[row] + "\s\s" + three_months_titles[row + 1] + "\s\s" + three_months_titles[row + 2].rstrip + "\n"
      print "Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa\n"

      #print days of month
      index = 0
      6.times do
        print three_months[row + 0][index] + "\s\s" + three_months[row + 1][index] + "\s\s" + three_months[row + 2][index] + "\n"
        index += 1
      end
      row += 3
    end

  end


end


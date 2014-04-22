class Year
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def to_s
    year_title = @year.to_s.center(63).rstrip + "\n\n"
    print year_title
    num = 1
    4.times do
      get_3_months(num)
      num += 3
    end
  end

  def get_3_months(num)
    three_months = [] #multidimensional array with 3 arrays of month lines in it
    three_months_titles = [] #will hold month names
    month_count = num #1 ==, 2 == feb, etc...
    column_counter = 1 #allows for distinction on third column for new line chars

    3.times do
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
      end
      three_months << joined_month_lines
      month_count += 1 #changes which month is being looped over
      column_counter += 1 #changes which column (1..3) is being looped over
    end

    #print titles and names of weekdays
    print three_months_titles[0] + "\s\s" + three_months_titles[1] + "\s\s" + three_months_titles[2].rstrip + "\n"
    print "Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa\n"

    #print days of month
    index = 0
    6.times do
      print three_months[0][index] + "\s\s" + three_months[1][index] + "\s\s" + three_months[2][index] + "\n"
      index += 1
    end

  end


end


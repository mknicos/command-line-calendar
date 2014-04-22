class Year
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def to_s
    year_title = @year.to_s.center(64).rstrip + "\n\n"
    print year_title
    print_month_arrays
  end

  def print_month_arrays
    jan = Month.new(1, @year)
    jan_title = jan.month_title
    jan_lines = jan.get_line_arrays

    index = 4
    2.times do
      days_in_line = jan_lines[index].length
      spaces = "\s\s\s"
      spaces_needed = 7 - days_in_line
      spaces_needed.times {jan_lines[index] << spaces}
      index += 1
    end

    joined_jan_lines = []
    jan_lines.each {|line| joined_jan_lines << line.join()}

    feb = Month.new(2, @year)
    feb_title = feb.month_title
    feb_lines = feb.get_line_arrays

    index = 4
    2.times do
      days_in_line = feb_lines[index].length
      spaces = "\s\s\s"
      spaces_needed = 7 - days_in_line
      spaces_needed.times {feb_lines[index] << spaces}
    end

    joined_feb_lines = []
    feb_lines.each {|line| joined_feb_lines << line.join()}

    mar = Month.new(3, @year)
    mar_title = mar.month_title
    mar_lines = mar.get_line_arrays
    joined_mar_lines = []
    mar_lines.each {|line| joined_mar_lines << line.join()}

    print jan_title + "\s\s" + feb_title + "\s\s" + mar_title.rstrip + "\n"
    print "Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa\n"
    index = 0
    6.times do
    print joined_jan_lines[index] + "\s\s" + joined_feb_lines[index] + "\s\s" + joined_mar_lines[index] + "\n"
    index += 1
    end
    #print jan_lines[0] + "\s\s" + feb_lines[0] + "\s\s" + mar_lines + "\n"

  end


end


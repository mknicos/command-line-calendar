class Year
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def to_s
    year_title = @year.to_s.center(63).rstrip + "\n\n"
    print year_title
    print_month_arrays(1)
    print_month_arrays(4)
    print_month_arrays(7)
    print_month_arrays(10)
  end

  def print_month_arrays(num)
    month_count = num
    jan = Month.new(month_count, @year)
    jan_title = jan.month_name
    jan_lines = jan.get_line_arrays

    joined_jan_lines = []
    jan_lines.each {|line| joined_jan_lines << line.join()}

    index = 4
    2.times do
      chars_in_line = joined_jan_lines[index].length
      spaces_needed = 20 - chars_in_line
      spaces_needed.times {joined_jan_lines[index] << "\s"}
      index += 1
    end
    
    month_count += 1
    feb = Month.new(month_count, @year)
    feb_title = feb.month_name
    feb_lines = feb.get_line_arrays

    joined_feb_lines = []
    feb_lines.each {|line| joined_feb_lines << line.join()}

    index = 4
    2.times do
      chars_in_line = joined_feb_lines[index].length
      spaces_needed = 20 - chars_in_line
      spaces_needed.times {joined_feb_lines[index] <<  "\s"}
      index += 1
    end

    month_count += 1
    mar = Month.new(month_count, @year)
    mar_title = mar.month_name
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

  end


end


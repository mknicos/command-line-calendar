class Year
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def to_s
    year_title = @year.to_s.center(64).rstrip + "\n\n"
    print year_title
  end



end


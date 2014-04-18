class Zeller

  def initialize
  end

  def self.find_start_day(month_input, year_input)

    year = year_input.to_i
    month = month_input.to_i

    #adjust zellers congruence for jan/ feb
    if month == 1 or month == 2
      month += 12
      year -= 1
    end
    year_of_century = year % 100
    century = (year / 100).floor
    compute_zeller(year, month, year_of_century, century)
  end

  def self.compute_zeller(year, month, year_of_century, century)
    first_day_of_month = 1    #day we are looking for is always the first in our case

    part1 = ((13*(month + 1))/5)
    part2 = year_of_century / 4
    part3 = century / 4
    part4 = 5 * century

    (first_day_of_month + part1 + year_of_century + part2 + part3 + part4) % 7
  end

end

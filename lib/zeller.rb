class Zeller

  def initialize
  end

  def self.find_start_day(month_input, year_input)

    year = year_input.to_i

    #remove leading zeros from month
    month = month_input.delete("0").to_i

    #adjust zellers congruence for jan/ feb
    if month == 1 or month == 2
      month += 12
      year -= 1
    end

    year_of_century = year % 100
    century = (year / 100).floor

    day = compute_zeller(year, month, year_of_century, century)
    day
  end

  def self.compute_zeller(year, month, year_of_century, century)
    #day we are looking for is always the first in this case
    first_day_of_month = 1

    part1 = ((13*(month + 1))/5)
    part2 = year_of_century / 4
    part3 = century / 4
    part4 = 5 * century

    answer = first_day_of_month + part1 + year_of_century + part2 + part3 + part4
    answer = answer % 7
    answer
  end

end

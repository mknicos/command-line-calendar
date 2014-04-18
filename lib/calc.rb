class Calc
  def initialize
  end

  def self.num_of_days_in_month(month)
    #expecting a two digit month as argument
    raise ArgumentError if month.to_s.length != 2 or month < 0
  end


end

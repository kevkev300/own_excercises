class Calculator
  def calc
    "hello"
  end

  def daily_interest(investment, yearly_interest_rate, year)
    days = ((year - 2020) % 4 != 0 ? 365 : 366)
    ((yearly_interest_rate.to_f / 100) * investment) / days
  end
end

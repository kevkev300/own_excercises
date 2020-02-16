class Calculator
  def calc_interest(args = {})

  end

  # check for a leap-year and returns the daily interest in EUR
  # daily interest is yearly interest / days in year
  def daily_interest(investment, yearly_interest_rate, date)
    days = ((date.year - 2020) % 4 != 0 ? 365 : 366)
    ((yearly_interest_rate.to_f / 100) * investment) / days
  end
end

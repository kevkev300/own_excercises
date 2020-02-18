class Calculator
  def calc(date_invest:, date_qualifying:, periods:, sum:, interest_rate:)
    paybacks = []
    payback = sum.to_f / (periods + 1)

    for period in (0..periods) do
      interest = calc_interest(period, interest_rate, sum, date_qualifying, date_invest)
      paybacks << (payback + interest).round(2)
      sum -= payback
    end
    paybacks
  end


  # check for a leap-year and returns the daily interest in EUR
  # daily interest is yearly interest / days in year
  def daily_interest(investment, yearly_interest_rate, date)
    days = ((date.year - 2020) % 4 != 0 ? 365 : 366)
    ((yearly_interest_rate.to_f / 100) * investment) / days
  end

  private

  def calc_interest(period, interest_rate, sum, date_qualifying, date_invest)
    if period.zero?
      daily_interest(sum, interest_rate, date_qualifying) * (date_qualifying - date_invest)
    else
      (interest_rate.to_f / 100) * sum
    end
  end
end

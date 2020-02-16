require_relative 'calculation'
require 'date'

  # Ich investiere zum 8. Februar 2020 den Betrag von 1000 Euro
  # Jeweils am 30. Juni 2020, 2021, 2022 und 2023 soll ich Zinsen iHv 5% p.a. erhalten, sowie eine Rückzahlung iHv 25% meiner Investition
  # Als Zinsberechnungsmethode nehmen wir act/act an
  # Welcher Betrag ist an den vier Stichtagen auszuzahlen?

RSpec.describe "Calculator" do
  describe '#daily_interest_rate' do
    it 'calculates the right daily interest if leap-year' do
      calculator = Calculator.new
      date_invest = Date.new(2020, 2, 8)
      right_interest = ((5.to_f / 100) * 1000) / 366

      interest = calculator.daily_interest(1000, 5, date_invest)

      expect(interest).to be_within(0.00001).of(right_interest)
    end

    it 'calculates the right daily interest if normal year' do
      calculator = Calculator.new
      date_invest = Date.new(2021, 2, 8)
      right_interest = ((5.to_f / 100) * 1000) / 365

      interest = calculator.daily_interest(1000, 5, date_invest)

      expect(interest).to be_within(0.00001).of(right_interest)
    end
  end

  describe '#calc_interest' do
    it "works in leap-year years" do
      calculator = Calculator.new
      date_invest = Date.new(2020, 2, 8)
      date_qualifying = Date.new(2020, 6, 30)
      right_interest = (((5.to_f / 100) * 1000) / 366) * (date_qualifying - date_invest)
      days = date_qualifying - date_invest

      interest = calculator.calc_interest(years: 0,
                                          interest: 5,
                                          sum: 1000,
                                          days: days)

      expect(interest).to be_within(0.00001).of(right_interest)
    end

    it "works in  normal year years" do
      calculator = Calculator.new
      date_invest = Date.new(2021, 2, 8)
      date_qualifying = Date.new(2021, 6, 30)
      right_interest = (((5.to_f / 100) * 1000) / 365) * (date_qualifying - date_invest)

      interest = calculator.calc_interest(years: 0,
                                          date_invest: 5,
                                          investment: 1000,
                                          date_invest: date_invest,
                                          date_qualifying: date_qualifying)

      expect(interest).to be_within(0.00001).of(right_interest)
    end
  end
end

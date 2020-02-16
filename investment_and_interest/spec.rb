require_relative 'calculator'
require 'date'

  # Ich investiere zum 8. Februar 2020 den Betrag von 1000 Euro
  # Jeweils am 30. Juni 2020, 2021, 2022 und 2023 soll ich Zinsen iHv 5% p.a. erhalten, sowie eine Rückzahlung iHv 25% meiner Investition
  # Als Zinsberechnungsmethode nehmen wir act/act an
  # Welcher Betrag ist an den vier Stichtagen auszuzahlen?

RSpec.describe "Calculator" do
  describe '#calc' do
    it 'works with 0 periods with first date_qualifying in the same year' do
      calculator = Calculator.new
      periods = 0

      solution = calculator.calc(date_invest: Date.new(2020, 2, 8),
                                 date_qualifying: Date.new(2020, 6, 30),
                                 sum: 1000,
                                 interest_rate: 5,
                                 periods: periods)

      expect(solution).to eq([1019.54])
    end

    it 'works with 1 periods first date_qualifying in the same year' do
      calculator = Calculator.new
      periods = 1

      solution = calculator.calc(date_invest: Date.new(2020, 2, 8),
                                 date_qualifying: Date.new(2020, 6, 30),
                                 sum: 1000,
                                 interest_rate: 5,
                                 periods: periods)

      expect(solution).to eq([519.54, 525])
    end

    it 'works with 3 periods first date_qualifying in the same year' do
      calculator = Calculator.new
      periods = 3

      solution = calculator.calc(date_invest: Date.new(2020, 2, 8),
                                 date_qualifying: Date.new(2020, 6, 30),
                                 sum: 1000,
                                 interest_rate: 5,
                                 periods: periods)

      expect(solution).to eq([269.54, 287.5, 275, 262.5])
    end

    it 'works with 1 periods first date_qualifying in the next year' do
      calculator = Calculator.new
      periods = 1

      solution = calculator.calc(date_invest: Date.new(2020, 6, 30),
                                 date_qualifying: Date.new(2021, 1, 31),
                                 sum: 1000,
                                 interest_rate: 5,
                                 periods: periods)

      expect(solution).to eq([529.45, 525])
    end
  end
end

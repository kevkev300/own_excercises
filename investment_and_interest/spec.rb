require_relative 'calculation'



  # Ich investiere zum 8. Februar 2020 den Betrag von 1000 Euro
  # Jeweils am 30. Juni 2020, 2021, 2022 und 2023 soll ich Zinsen iHv 5% p.a. erhalten, sowie eine Rückzahlung iHv 25% meiner Investition
  # Als Zinsberechnungsmethode nehmen wir act/act an
  # Welcher Betrag ist an den vier Stichtagen auszuzahlen?



RSpec.describe "Calculator" do
  describe '#daily_interest_rate' do
    it 'calculates the right daily interest if leap-year' do
      calculator = Calculator.new
      interest = calculator.daily_interest_rate(1000, 5, 2020)
      expect(interest).to be_within(0.0001).of(0.136612)
    end

    it 'calculates the right daily interest if normal year' do
      calculator = Calculator.new
      interest = calculator.daily_interest_rate(1000, 5, 2021)
      expect(interest).to be_within(0.0001).of(0.136986)
    end
  end

  describe '#calc' do
    xit "work with 0 years" do
      expect(Calculator.new.calc(0, 5, 1000).to eq)
    end
  end
end

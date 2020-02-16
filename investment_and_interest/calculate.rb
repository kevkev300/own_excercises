require_relative 'calculator'
require 'date'

calculator = Calculator.new

puts 'Please insert an investment date'
puts 'year:'
year_i = gets.chomp.to_i
puts 'month:'
month_i = gets.chomp.to_i
puts 'day:'
day_i = gets.chomp.to_i

date_invest = Date.new(year_i, month_i, day_i)

puts 'please insert first qualifying date'
puts 'year:'
year_q = gets.chomp.to_i
puts 'month:'
month_q = gets.chomp.to_i
puts 'day:'
day_q = gets.chomp.to_i

date_qualifying = Date.new(year_q, month_q, day_q)

puts 'insert total investment sum:'
sum = gets.chomp.to_i

puts 'set interest rate in %:'
interest_rate = gets.chomp.to_i

puts 'How many periods do you want to invest (full years of investment)?'
periods = gets.chomp.to_i

puts 'calculating...'

solution = calculator.calc(date_invest: date_invest,
                           date_qualifying: date_qualifying,
                           sum: sum,
                           interest_rate: interest_rate,
                           periods: periods)

puts 'That is what you get back on the qualifying dates:'

solution.each { |payback| puts "#{payback}€"}

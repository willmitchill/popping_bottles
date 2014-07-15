require 'pry'
require 'colorize'
require_relative 'counter'


can_redeem = true

puts "How many bottles did you purchase?"
@initial_bottles = gets.chomp.to_i

add_initial_bottles
new_current_count
while @counter do
  # add_initial_bottles

  redeemed = count_redeemables


  cash_in_bottles(redeemed)
  cash_in_caps(redeemed)

  if (@current_bottles <= 1 && @current_caps <= 3)
    can_redeem = false
  end
end

puts @total_bottles

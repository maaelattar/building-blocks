def stock_picker(arr)
  max_profit = 0
  buy_day = 0
  sell_day = 0
  arr[0...-1].each_with_index do |buy_price, buy_index|
    arr[buy_index..-1].each_with_index do |sell_price, sell_index|
      next unless sell_price - buy_price > max_profit
      max_profit = sell_price - buy_price
      buy_day = buy_index
      sell_day = sell_index + 1
    end
  end

  puts(buy_day, sell_day)
end

stock_picker([30, 15, 1, 2, 60, 90, 0, 3])

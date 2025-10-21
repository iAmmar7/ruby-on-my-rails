def stock_picker(stocks)
  min_price = Float::INFINITY
  max_profit = 0

  best_buy = 0
  best_sell = 0
  min_index = -1

  stocks.each_with_index do |price, i|
    if price < min_price
      min_price = price
      min_index = i
    else
      new_profit = price - min_price
      if new_profit > max_profit
        max_profit = new_profit
        best_buy = min_index
        best_sell = i
      end
    end
  end

  return [best_buy, best_sell]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
def stock_picker(stocks)
  max_profit = -1
  days = Array.new(2, 0)

  stocks.each_with_index do |buying_stock, buying_day|
    stocks[buying_day..].each_with_index do |selling_stock, selling_day|
      net_profit = selling_stock - buying_stock
      next if net_profit <= max_profit

      max_profit = net_profit
      days[0] = buying_day
      days[1] = buying_day + selling_day
    end
  end

  days
end

stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts stock_picker(stocks)

def profit(prices, days)
    prices[days[1]] - prices[days[0]]
end

def stock_picker(prices)
    best = [0, 0]
    max_profit = 0
    prices.each_index do |i|
        future_prices = prices[i .. -1] 
        max_index = i + future_prices.index(future_prices.max)
        current = [i, max_index]
        current_profit = profit(prices, current)
        if current_profit > max_profit
            best = current
            max_profit = current_profit
        end
    end
    best
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([5, 4, 3, 2, 1])
p stock_picker([1, 2, 3, 4, 5])
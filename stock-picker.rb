
def stock_picker(array)
    most_profit = -1.0/0.0
    best_buy_index = nil
    best_sell_index = nil
    array.each_index do |buy_price_index|
        array.each_index do |sell_price_index|
            buy_price = array[buy_price_index]
            sell_price = array[sell_price_index]
            if sell_price - buy_price > most_profit  && (buy_price_index < sell_price_index)
                most_profit = sell_price - buy_price
                best_buy_index = buy_price_index
                best_sell_index = sell_price_index
            end
        end
    end
    p [best_buy_index, best_sell_index]
end


arr = [17,3,6,9,15,8,6,1,10]
stock_picker(arr)
# => [1,4] ## for a profit of $15 - $3 == $12
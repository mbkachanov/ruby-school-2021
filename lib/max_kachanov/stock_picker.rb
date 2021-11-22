module MaxKachanov
  class StockPicker
    attr_reader :prices

    def initialize(prices: [])
      @prices = prices.to_a
    end

    def pick
      profits_with_prices = prices.each_with_object({}) do |buy_price, profits_with_prices|
        prices[prices.index(buy_price)..-1].each do |sell_price|
          profits_with_prices[(sell_price - buy_price)] = [prices.index(buy_price), prices.index(sell_price)]
        end
      end

      profits_with_prices[profits_with_prices.keys.max].to_a
    end
  end
end

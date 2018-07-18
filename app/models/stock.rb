class Stock < ApplicationRecord
  has_many :user_stocks
  has_many :users,through: :user_stocks
  #Class level method(self.method) and instance level method
  def self.new_from_lookup(ticker_symbol)
    looked_up_stock = StockQuote::Stock.quote(ticker_symbol) #This will return a stock object
    if looked_up_stock
      new(name:looked_up_stock.company_name,ticker:looked_up_stock.symbol,last_price:looked_up_stock.close)#new method is belonged to the class, not the object
    end
  end
  
end

class HomeController < ApplicationController
  def index
    StockQuote::Stock.new(api_key: 'pk_cd277a5a98b1430c9bd2ee3a586c6eb2')
    if params[:ticker] == ''
      @nothing = 'Hey! You Forgot To Enter A Symbol'
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
    elsif !@stock
      @error = "Hey! That Stock Symbol Doesn't Exist. Please Try Again."
    end
  end

  def about
  end
end

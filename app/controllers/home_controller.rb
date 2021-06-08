class HomeController < ApplicationController
  def index
    if params[:ticker] == ""
      @nothing = 'Hey! You Forgot To Enter A Symbol'
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
    elsif !@stock
      @error = "Hey! Thats Stock symbol Doesn't Exist. Please try Again!"
    end
  end

  def about
  end
end

class PricesController < ApplicationController
  def show
    @price = Price.all
  end
end

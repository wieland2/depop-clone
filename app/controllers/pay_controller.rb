class PayController < ApplicationController

  def index
    @order = Order.where(paid: false).last
  end
  
end

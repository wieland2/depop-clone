class BagController < ApplicationController


  def index
    @user = User.find(current_user.id)
    @purchases = @user.purchases.where(sold: false)
    @order = Order.new
  end
  
end

class OrdersController < ApplicationController

  def index
    @orders = Order.all
    @reviews = Review.all
  end

  def show
    @order = Order.find(params[:id])
    @review = Review.new
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    Order.where(paid: false).destroy_all
    @product = Product.find(params[:product_id])
    @order = Order.new
    @order.user = current_user
    @order.product_id = @product.id
    if @order.save
      redirect_to pay_index_path
    else
      redirect_to pay_index_path
    end
   end

   def edit
    @order = Order.last
   end

   def update
    @order = Order.last
    @order.update(order_params)
    @order.product.update(sold: true)
    if @order.product.purchases.last != nil
      @order.product.purchases.last.destroy
      redirect_to orders_path
    else
       redirect_to orders_path
    end
   end

   private

   def order_params
    params.require(:order).permit(:user_id, :product_id, :paid)
   end

end

class PurchasesController < ApplicationController

  def new
    @purchase = Purchase.new
  end

  def create
    @user = User.find(current_user.id)
    @product = Product.find(params[:product_id])
    @purchase = Purchase.new
    @purchase.user_id = current_user.id
    @purchase.product_id = @product.id
    if @purchase.save
      redirect_to product_path(@product)
    else
    end
  end


  def edit
    @purchase = Purchase.find(params[:id])
  end

  def update
  end

  def destroy
    @purchase = Purchase.find(params[:id])
    @purchase.destroy
    redirect_to bag_index_path
  end

  private

  def purchase_params
    params.require(:purchase).permit(:product_id, :user_id)
  end

end

class LikesController < ApplicationController

  def new
    @like = Like.new
  end

  def create
    @user = User.find(current_user.id)
    @product = Product.find(params[:product_id])
    @like = Like.new
    @like.user = current_user
    @like.product_id = @product.id
    if @like.save
      redirect_back_or_to root_path
    else
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    @product = Product.find(params[:product_id])
    redirect_back_or_to root_path
  end

end

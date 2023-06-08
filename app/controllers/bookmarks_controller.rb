class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
  end

  def create
    @user = User.find(current_user.id)
    @product = Product.find(params[:product_id])
    @bookmark = Bookmark.new
    @bookmark.user = current_user
    @bookmark.product_id = @product.id
    if @bookmark.save
      redirect_to product_path(@product)
    else
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    @product = Product.find(params[:product_id])
    redirect_to product_path(@product)
  end

end

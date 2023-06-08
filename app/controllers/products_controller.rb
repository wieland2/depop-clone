class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :destroy, :edit, :update]

  def index
    @like = Like.new
    if params[:query].present?
      sql_query = "title ILIKE :query OR brand ILIKE :query OR description ILIKE :query OR category ILIKE :query OR gender ILIKE :query"
      @products = Product.where(sql_query, query: "%#{params[:query]}%")
    else
      @products = Product.all
    end
  end

  def show
    @purchase = Purchase.new
    @like = Like.new
    @likes = @product.likes.where(user_id: current_user.id)
    @order = Order.new
    @bookmark = Bookmark.new
    @bookmarks = @product.bookmarks.where(user_id: current_user.id)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
    redirect_to product_path(@product)
    else
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:size, :shipping, :brand, :sold, :category, :gender, :condition, :country, :city, :style, :price, :title, :photo, :description, :user_id, colours: [], styles: [])
  end
end

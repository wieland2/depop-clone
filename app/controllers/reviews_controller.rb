class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @order = Order.find(params[:order_id])
    @review = Review.new(review_params)
    @review.order_id = @order.id
    @review.reviewer_id = current_user.id
    @review.reviewed_id = @order.product.user_id
    @review.save
    redirect_to order_path(@order)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :reviewed_id, :reviewer_id, :order_id)
  end
end

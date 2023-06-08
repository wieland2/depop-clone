class FollowsController < ApplicationController

  def new
    @follow = Follow.new
  end

  def create
    @follow = Follow.new(follow_params)
    @follow.follower_id = current_user.id
    @follow.save
    redirect_back_or_to root_path
  end

  def destroy
    @follow = Follow.find(params[:id])
    @follow.destroy
    redirect_back_or_to root_path
  end

  private

  def follow_params
    params.require(:follow).permit(:following_id, :follower_id)
  end

end

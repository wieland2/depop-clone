class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @products = Product.where(user_id: params[:id])
    @follow = Follow.new
    @followers = Follow.where(following_id: params[:id])
    @following = Follow.where(follower_id: params[:id])
    @reviews = Review.all
  end

  def sold
    @user = User.find(params[:id])
    @products = Product.where(user_id: params[:id], sold: true)
    @follow = Follow.new
    @followers = Follow.where(following_id: params[:id])
    @following = Follow.where(follower_id: params[:id])
  end

  def selling
    @user = User.find(params[:id])
    @products = Product.where(user_id: params[:id], sold: false)
    @follow = Follow.new
    @followers = Follow.where(following_id: params[:id])
    @following = Follow.where(follower_id: params[:id])
  end

  def likes
    @user = User.find(params[:id])
    @products = Product.where(user_id: params[:id], sold: false)
    @follow = Follow.new
    @followers = Follow.where(following_id: params[:id])
    @following = Follow.where(follower_id: params[:id])
  end

  def bookmarks
    @user = User.find(params[:id])
    @products = Product.where(user_id: params[:id])
    @follow = Follow.new
    @followers = Follow.where(following_id: params[:id])
    @following = Follow.where(follower_id: params[:id])
  end

  def followers
    @user = User.find(params[:id])
    @follow = Follow.new
  end

  def following
    @user = User.find(params[:id])
    @follow = Follow.new
  end




end

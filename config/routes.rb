Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home" do
  end

  resources :users, only: [:show] do
    member do
      get "sold"
      get "selling"
      get "likes"
      get "bookmarks"
      get "following"
      get "followers"
    end
  end

  resources :follows, only: [:new, :create, :destroy]


  resources :products, :shallow => true do
    resources :likes, only: [:new, :create, :destroy]
    resources :bookmarks, only: [:new, :create, :destroy]
    resources :purchases, :except => [:index, :edit, :update, :show]
    resources :orders, only: [:new, :create]
  end



  resources :orders, only: [:edit, :update]
  resources :orders, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end

  resources :bag, only: [:index]
  resources :pay, only: [:index]
end

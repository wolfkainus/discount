Rails.application.routes.draw do
  resources :coupons
  resources :locations
  devise_for :users

  resources :coupons do 
    member do
      put "like", to: "coupons#upvote"
      put "dislike", to: "coupons#downvote"
    end
  end

  root to: "coupons#index"

end

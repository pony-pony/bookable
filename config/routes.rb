Rails.application.routes.draw do
  root to: 'static_pages#home'
  devise_for :users
  resources :reviews, only: [:index, :new, :create, :show] do
    resources :likes, only: [:create, :destroy]
  end
end

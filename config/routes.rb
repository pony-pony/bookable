Rails.application.routes.draw do
  root to: 'static_pages#home'
  devise_for :users
  resources :likes, only: :index
  resources :reviews, only: [:index, :new, :create, :show] do
    collection do
      get :nope
    end
    resources :likes, only: [:create, :destroy]
  end
end

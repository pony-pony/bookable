Rails.application.routes.draw do
  get 'users/show'
  root to: 'static_pages#home'
  devise_for :users
  resources :users
  resources :likes, only: :index
  resources :relationships, only: [:create, :destroy]
  resources :reviews, only: [:index, :new, :create, :show] do
    collection do
      get :nope
    end
    resources :likes, only: [:create, :destroy]
  end
end

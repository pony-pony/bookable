Rails.application.routes.draw do
  get 'users/show'
  root to: 'static_pages#home'
  devise_for :users
  resources :users
  resources :comments, only: [:index]
  resources :likes, only: :index
  resources :relationships, only: [:create, :destroy]
  resources :reviews, only: [:index, :new, :create, :show] do
    collection do
      get :nope
      get :search
    end
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
end

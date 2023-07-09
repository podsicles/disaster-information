Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"

  namespace :user do
    get 'posts', to: 'posts#index', as: 'posts'
    get 'comments', to: 'comments#index', as: 'comments'
    resources :comments, only: [:edit, :update, :destroy]
  end

  resources :posts do
    resources :comments, except: :show
  end
  
  resources :categories, except: :show
end


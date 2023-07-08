Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"

  get '/user/posts', to: 'user_posts#index', as: 'user_posts'
  get '/user/comments', to: 'user_posts#comments', as: 'user_comments'
  resources :posts
  resources :posts do
    resources :comments, except: :show
  end
  resources :categories, except: :show
end


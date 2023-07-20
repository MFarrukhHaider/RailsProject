Rails.application.routes.draw do
  resources :users
  require 'sidekiq/web'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'all_posts',to: "posts#index"
  get 'get_by_id/:id', to: "posts#show"
  get 'new_post', to: "posts#new"
  post 'posts_create', to: "posts#create"
  get 'edit_post/:id', to: "posts#edit"
  patch 'update_post/:id', to: "posts#update", as: :update_post
  mount Sidekiq::Web => "/sidekiq"
  get "job" => "job#index"
  get "job/email" => "job#email"
  get "job/post" => "job#delayed_post"
  get "job/long" => "job#long"
  get "job/crash" => "job#crash"
  get "job/bulk" => "job#bulk"
end

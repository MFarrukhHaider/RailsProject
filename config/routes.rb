Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'all_posts',to: "posts#index"
  get 'get_by_id/:id', to: "posts#show"
  get 'new_post', to: "posts#new"
  post 'posts_create', to: "posts#create"
  get 'edit_post/:id', to: "posts#edit"
  patch 'update_post/:id', to: "posts#update", as: :update_post
end

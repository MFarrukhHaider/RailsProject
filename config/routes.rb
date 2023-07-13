Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'all_posts',to:"posts#index"
  get 'get_by_id/:id', to:"posts#show"
  get 'new_post', to:"posts#new"
end

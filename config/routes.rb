Rails.application.routes.draw do
  root 'posts#index'
  post 'search', to: 'search#index', as: 'search'

  post 'search/suggestions', to: 'search#suggestions', as: 'search_suggestions'
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

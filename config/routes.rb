Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'movies#index'
  get '/movies', to: 'movies#index', as: 'movies'
  get '/movies/new', to: 'movies#new', as: 'new_movies'
end

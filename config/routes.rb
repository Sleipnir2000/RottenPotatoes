Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'movies#index'

  get '/movies', to: 'movies#index', as: 'movies'
  get '/movies/new', to: 'movies#new', as: 'new_movies'
  post '/movies', to: 'movies#create'
  get '/movie/:id', to: 'movies#show', as: 'movie'
  get '/movie/:id/edit', to: 'movies#edit', as: 'edit_movie'
  patch '/movie/:id', to: 'movies#update'
  delete '/movie/:id', to: 'movies#destroy'
end

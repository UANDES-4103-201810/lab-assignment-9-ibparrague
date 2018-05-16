Rails.application.routes.draw do
  get 'persons/new'

  get 'persons/index'

  get 'persons/create'

  resources :movies
  resources :actor_movies
  resources :addresses
  resources :categories
  resources :actors
  resources :directors


  root "persons#new"
  get "/persons/new" , to: "persons#new"
  post "/persons/create", to: "persons#create"
  get "/persons", to: "persons#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

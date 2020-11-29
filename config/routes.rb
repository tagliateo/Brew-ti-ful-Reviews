Rails.application.routes.draw do
  root 'sessions#home'

  get '/signup', to: 'users#new'

  # Login
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  # logout
  delete '/logout', to: 'sessions#destroy'

  resources :coffees do
    resources :reviews, only: [:new, :index, :show]
  end
  resources :users, only: [:new, :create, :show] do
    resources :coffees
  end
  resources :reviews
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'sessions#home'

  get '/signup', to: 'users#new'

  resources :coffees
  resources :users, only: [:new, :create, :show]
  resources :reviews
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  get '/signup', to: 'users#new'

  resources :coffees
  resources :users, only: [:new, :create, :show]
  resources :reviews
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

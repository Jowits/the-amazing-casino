Rails.application.routes.draw do

  
  root 'sessions#new'
  
  get '/login', to: 'sessions#new', as: :login
  get '/home', to: 'pages#home', as: :home
  get '/users/:id/new_password', to: 'users#new_password', as: :new_password


  resources :blackjacks
  resources :roulettes
  resources :games
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

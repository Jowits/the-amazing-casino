Rails.application.routes.draw do
  resources :blackjacks
  resources :roulettes
  resources :games
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

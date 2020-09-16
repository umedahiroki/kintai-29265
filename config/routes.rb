Rails.application.routes.draw do
  devise_for :users
  root to: 'plays#index'
  resources :plays, only: [:index,:create]
  resources :users, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

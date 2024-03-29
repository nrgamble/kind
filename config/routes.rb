Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :acts
  resources :challenges
  resources :groups

  root to: 'acts#index'

  mount ActionCable.server => '/cable'
end

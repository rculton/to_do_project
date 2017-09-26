Rails.application.routes.draw do
  root 'users#index'

  resources :users
  resources :lists
  resources :tasks

  resources :sessions, only: [:new, :create]
  delete '/logout' => 'sessions#destroy', as: :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

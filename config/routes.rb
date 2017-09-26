Rails.application.routes.draw do
  root 'users#index' ##this will be our pseudo-home page

  resources :users
  resources :lists, except: [:index]
  resources :tasks, except: [:index]

  resources :sessions, only: [:new, :create]
  delete '/logout' => 'sessions#destroy', as: :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

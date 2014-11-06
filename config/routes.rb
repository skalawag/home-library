Rails.application.routes.draw do
  root to: 'pages#index'

  resources :books, only: [:index, :show, :new, :create]

  resources :authors, only: [:index, :show]
end

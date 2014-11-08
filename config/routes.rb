Rails.application.routes.draw do
  root to: 'pages#index'
  get 'mylibrary', to: 'pages#mylibrary'

  resources :books, only: [:index, :show, :new, :create]
  resources :authors, only: [:index, :show]
  resources :articles, only: [:index]
end

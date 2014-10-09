Rails.application.routes.draw do

  resources :libraries, only: [:index, :show]
  resources :books, only: [:show]

  root 'libraries#index'
end

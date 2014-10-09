Rails.application.routes.draw do

  resources :libraries, only: [:index, :show]
  resources :books, only: [:create]

  root 'libraries#index'
end

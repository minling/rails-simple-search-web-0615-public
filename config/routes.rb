Rails.application.routes.draw do

  root 'welcome#index'

  resources :search, only: [:index]

  resources :words, only: [:index, :show]
end

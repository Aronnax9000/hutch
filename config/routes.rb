
Rails.application.routes.draw do
  resources :cages
  resources :stacks
  resources :blocks
  resources :geometries
  devise_for :users
  root "welcome#index"
  get 'welcome/index'
  resources :barns
end
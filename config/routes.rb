Rails.application.routes.draw do
  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "hutches#index"
end

Rails.application.routes.draw do
  get 'welcome/index'
  root "home#index"

  get "/hutches", to: "hutches#index"
end
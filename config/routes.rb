Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :items
  resources :list_items
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'items#index'
  

  # get 'store/index'
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
end

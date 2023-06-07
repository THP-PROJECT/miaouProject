Rails.application.routes.draw do
  namespace :admin do
    # Routes pour la ressource users
    resources :users

    # Routes pour la ressource carts
    resources :carts

    # Routes pour la ressource orderables
    resources :orderables

    # Routes pour la ressource products
    resources :products

    # Route racine de l'administration
    root to: "users#index"
  end
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'

  resources :products
  
  root 'products#index'
  
  resource :user_profile, controller: 'users_profiles', only: [:show, :edit, :update]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

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
  
  # Routes pour le profil utilisateur (show, edit, update)
  resource :user_profile, controller: 'users_profiles', only: [:show]

  # Routes pour l'authentification des utilisateurs
  devise_for :users
  
  # Définissez vos routes d'application selon le DSL dans https://guides.rubyonrails.org/routing.html

  # Définit la route du chemin racine ("/")
  # root "articles#index"
end

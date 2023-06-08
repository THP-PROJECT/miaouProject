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

  # Route pour afficher le panier
  get 'cart', to: 'cart#show'
  
  # Route pour ajouter un produit au panier
  post 'cart/add'
  post 'cart/remove'
  get 'cart', to: 'carts#show', as: 'view_cart'


  # Routes pour la ressource products
  resources :products

  # Route racine de l'application
  root 'products#index'
  
  # Routes pour le profil utilisateur (show, edit, update)
  resource :user_profile, controller: 'users_profiles', only: [:show]

  # Routes pour l'authentification des utilisateurs
  devise_for :users
end
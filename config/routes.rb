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

  # Routes stripe
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'

    get 'success', to: 'checkout#success', as: 'checkout_success'
    
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end

  # Route pour afficher le panier
  get 'cart', to: 'cart#show', as: 'view_cart'
  get '/carts/:id', to: 'cart#show', as: 'cart'
  
  # Route pour ajouter un produit au panier
  post 'cart/add'

  # Route pour supprimer un produit du panier
  post 'cart/remove'

  # Routes pour la ressource products
  resources :products

  # Route racine de l'application
  root 'products#index'
  
  # Routes pour le profil utilisateur (show, edit, update)
  resource :user_profile, controller: 'users_profiles', only: [:show]

  # Routes pour l'authentification des utilisateurs
  devise_for :users
end
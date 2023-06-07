class ApplicationController < ActionController::Base
  # Avant chaque action des contrôleurs Devise, exécuter la méthode configure_devise_parameters
  before_action :configure_devise_parameters, if: :devise_controller?
  
  # Avant chaque action, définir @render_cart à true
  before_action :set_render_cart
  
  # Avant chaque action, initialiser le panier
  before_action :initialize_cart

  def set_render_cart
    # Définir la variable d'instance @render_cart à true
    @render_cart = true
  end

  def initialize_cart
    # Trouver le panier dans la session actuelle
    @cart ||= Cart.find_by(id: session[:cart_id])

    if @cart.nil?
      # Créer un nouveau panier s'il n'existe pas dans la session
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end
  
  # Méthode pour configurer les paramètres Devise
  def configure_devise_parameters
    # Permet les paramètres spécifiés lors de l'inscription (sign_up)
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :address, :zipcode, :email, :is_admin, :password, :password_confirmation])
  
    # Permet les paramètres spécifiés lors de la mise à jour du compte (account_update)
    devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, :address, :zipcode, :is_admin, :email, :password, :password_confirmation])
  end
  
  # Méthode pour obtenir le prénom de l'utilisateur
  def user_first_name
    # Utiliser la méthode first_name pour retourner le prénom de l'utilisateur
    first_name
  end
end

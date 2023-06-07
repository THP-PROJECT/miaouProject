class UsersProfilesController < ApplicationController
  def show
    @user = current_user 
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_profile_path, notice: 'Profil mis à jour avec succès.'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :bio) # Ajoutez les attributs du profil que vous souhaitez mettre à jour
  end
end


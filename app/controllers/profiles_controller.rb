class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile

    if @profile.update(profile_params)
      redirect_to root_path, notice: "Profile updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:bio, :profile_picture)
  end
end

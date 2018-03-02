class ProfilsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :new, :create]

  def show
    @user = User.find(params[:id])
  end

  def new
    @profil = Profil.new
  end

  def create
    @profil = Profil.new(profil_params)
    if @profil.save
      redirect_to profil_path(@profil)
    else
      render :new
    end
  end

  def update
  end

  private

  def profil_params
    params.require(:profil).permit(:first_name, :last_name, :pseudo, :city, :country, :description, :birth_date, :avatar, :photo, :photo_cache)
  end
end

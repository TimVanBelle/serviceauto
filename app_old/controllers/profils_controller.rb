class ProfilsController < ApplicationController

  def new
    @profil = Profil.new
  end

  def create
    @profil = @profil.build(create_params)

    if @profil.save
      redirect_to @profil
    else
      render :new
    end
  end



  def edit
    find_profil
  end

  def update
    find_profil
    if @profil.update_attributes(create_params)
    else
      render :edit
    end
  end

  def show

  end

  private
  def find_profil
    @profil = Profil.find(params[:id])
  end

  def create_params
    params.require(:profil).permit(:first_name, :last_name, :mail, :picture, :address, :phone_number, :password, :password_confirmation)
  end
end

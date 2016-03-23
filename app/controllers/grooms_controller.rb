class GroomController < ApplicationController

  def new
    @groom = Groom.new
  end

  def create
    @groom = Groom.new(lift_params)
    @groom.user = current_user

    if @groom.save
      redirect_to @groom
    else
      render :new
    end
  end

  def edit
    @groom = Groom.new
  end

  def show
    @groom = Groom.find(params[:id])
  end

  def update
     @groom = Groom.new(groom_params)
    if @groom.save
     redirect_to groom_path(@groom)
    else
     render :edit
    end
  end

  def index
    @grooms = Groom.all

    @markers = Gmaps4rails.build_markers(@grooms) do |groom, marker|
      marker.lat groom.latitude
      marker.lng groom.longitude
    end
  end

  private

  def groom_params
    params.require(:groom).permit(:firt_name, :last_name, :mail, :phone_number, :driving_licence, :rib, :address, :picture, :picture_cache)
  end

end

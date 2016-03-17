class CarsController < ApplicationController

  before_action :find_car, only: [:edit, :show, :update, :destroy]

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(create_params)

    @car.user = current_user
    if @car.save!
      redirect_to account_path
    else
      render :new
    end
  end


  def edit
    authorize @car
  end

  def update
    authorize @car
    if @car.update_attributes(create_params)
    else
      render "/account"
    end
  end

  def show

  end

   def destroy
    authorize @car
    if @car.delete
      redirect_to account_path
    else
      render :new
    end
  end

  private
  def find_car
    @car = Car.find(params[:id])
  end

  def create_params
    params.require(:car).permit(:registration_plate, :model, :car_maker, :color, :mileage)
  end
end

class CarsController < ApplicationController

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
    find_car
  end

  def update
    find_car
    if @car.update_attributes(create_params)
    else
      render :edit
    end
  end

  def show

  end

   def destroy
    if @car.destroy
      redirect_to @customer
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

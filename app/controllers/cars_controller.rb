class CarsController < ApplicationController

  def new
    @car = Car.new
  end

  def create
    @car = @car.build(create_params)

    if @car.save
      redirect_to @car
    else
      render :new
    end
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
    params.require(:car).permit(:registration_plate, :car_maker, :color, :mileage)
  end
end

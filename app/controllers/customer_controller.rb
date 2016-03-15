class CustomerController < ApplicationController

  def new
    @customer = Customer.new
  end

  def create
    @customer = @customer.build(create_params)

    if @customer.save
      redirect_to @customer
    else
      render :new
    end
  end

  end

  def edit
    find_customer
  end

  def update
    find_customer
    if @customer.update_attributes(create_params)
    else
      render 'edit'
    end
  end

  def show

  end

  private
  def find_customer
    @customer = Customer.find(params[:id])
  end

  def create_params
    params.require(:customer).permit(:first_name, :last_name, :mail, :picture, :address, :phone_number, :password, :password_confirmation)
  end
end

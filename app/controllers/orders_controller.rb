class OrdersController < ApplicationController

  def index
    @orders = policy_scope(Order)
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(create_params)

    if @order.save
      redirect_to @order
    else
      render :new
    end
  end

  def edit
    find_order
  end

  def update
    find_order
    start_time = params[:order][:start_date].to_datetime
    end_date = params[:order][:end_date].to_datetime
    subtotal = current_order.subtotal + 25.0
    authorize @order
    if @order.update_attributes(create_params)
      redirect_to account_orders_path @order
    else
      render :edit
    end
  end

  def destroy
    if @order.destroy
      redirect_to @customer
    else
      render :new
    end
  end

  private
  def find_order
    @order = Order.find(params[:id])
  end

  def create_params
    params.require(:order).permit(:start_date, :end_date, :pick_up_place, :return_place, :comment, :car_id, :subtotal)
  end
end

class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def edit
    authorize current_order
    check_order_step 'new_order'
  end

  def create
    authorize current_order
    current_order.make_order
    current_order.save!(validate: false)

    redirect_to action: :edit
  end

  def update
    authorize current_order
    check_order_step 'new_order'
    if current_order.update_attributes(order_params)
      current_order.confirm
      current_order.save!
      redirect_to new_order_payments_path
    else
      render :edit
    end
  end

  private

  def order_params
    params.require(:order).permit(:pick_up_place, :start_date, :return_place, :end_date, :car_id)
  end

end

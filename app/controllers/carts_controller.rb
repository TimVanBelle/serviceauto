class CartsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @cart = current_order
    @order_items = current_order.order_items
    #authorize :order_items
    authorize @cart
  end

  def edit
    find_cart
    redirect_to edit_cart_path
  end

  def update
    find_cart
    authorize @cart

    @cart.save
    if @cart.valid?

    else
      render :show
    end
  end

  private
  def find_cart
    @cart = current_order
  end

  def create_params
    params.require(:order).permit(:price)
  end
end

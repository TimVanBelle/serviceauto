class CartItemsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @cart = current_order
    authorize @cart

    @cart.add_item(service_params[:service_id])

  rescue Order::ItemAlreadyPresent => e
    @alert = 'Already present'
  end

  def destroy
    @cart = current_order
    authorize @cart

    @cart.delete_item(params[:id])
  end

private

  def service_params
    params.require(:service).permit(:service_id)
  end

end

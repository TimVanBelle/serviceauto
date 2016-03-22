class OrderItemsController < ApplicationController
  skip_before_action :authenticate_user!
  def create
    @order = current_order

    if @order.order_items.where(service_id: order_item_params[:service_id]).count > 0
      @alert = 'Already present'
    else
      @order_item = @order.order_items.new(order_item_params)
      @order_item.unit_price = @order_item.service.price
      @order.save!
    end
    authorize :order_items
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    authorize :order_items
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    authorize :order_items
    @order_item.destroy
    @order_items = @order.order_items
  end
private
  def order_item_params
    params.require(:order_item).permit(:quantity, :service_id)
  end
end

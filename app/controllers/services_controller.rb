class ServicesController < ApplicationController
  def index
    if params[:prestation]
      search = params[:prestation]
      @services = Service.all.where(category: search)
    else
      @services = Service.all
    end

    @order_item = current_order.order_items.new
  end
end


class ServicesController < ApplicationController
    def index
    @services = Service.all
    @order_item = current_order.order_items.new
    end
end


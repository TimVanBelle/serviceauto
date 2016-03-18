class ServicesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_policy_scoped

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

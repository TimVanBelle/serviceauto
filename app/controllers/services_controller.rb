class ServicesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_policy_scoped

  def index
    cart_ids = current_order.order_items.map(&:service_id)
    @services = Service.search(params[:prestation]).where.not(id: cart_ids)
    @services.inspect
  end

end

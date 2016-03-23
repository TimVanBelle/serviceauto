class CartsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @cart = current_order
    authorize @cart
    check_order_step 'cart'
  end

end

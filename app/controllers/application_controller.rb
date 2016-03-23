class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :current_order

  # before_filter :store_current_location, unless: :devise_controller?
  include Pundit

  after_action :verify_authorized, except: :index, unless: :devise_controller?
  after_action :verify_policy_scoped, only: :index, unless: :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    flash[:alert] = "Vous n'êtes pas autoriser à accéder à cette action."
    redirect_to '/'
  end

  def current_order
    @current_order ||= Order.find_by_id(session[:order_id])

    if @current_order && @current_order.paid?
      session[:order_id] = nil
      @current_order = nil
    end


    unless @current_order
      @current_order = Order.create
      session[:order_id] = @current_order.id
    end

    @current_order
  end

  def check_order_step(step)
    case current_order.state
    when  'cart'
      return redirect_to cart_path unless step == 'cart'
    when  'new_order'
      return redirect_to edit_order_path unless step == 'new_order'
    when  'confirmed'
      return redirect_to new_order_payments_path unless step == 'confirmed'
    when  'paid'
      return redirect_to account_path unless step == 'paid'
    end
  end

  # def store_current_location
  #   store_location_for(:user, request.url)
  # end
end

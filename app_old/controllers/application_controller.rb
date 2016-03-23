class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :current_order
  before_filter :store_current_location, unless: :devise_controller?
  include Pundit

  after_action :verify_authorized, except: :index, unless: :devise_controller?
  after_action :verify_policy_scoped, only: :index, unless: :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    flash[:alert] = "Vous n'êtes pas autoriser à accéder à cette action."
    redirect_to '/'
  end

  def current_order
    if session[:order_id].present?
      if Order.where(id: session[:order_id]).length > 0
        return Order.where(id: session[:order_id]).first
      else
        return Order.new
      end
    else
      Order.new
    end
  end

  def store_current_location
    store_location_for(:user, request.url)
  end
end

class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def show
    @service_available = true
    @categories = Service.categories

    if params[:search]
      @service_available = false unless Groom.near("#{params[:search]}", 10).length > 0
    end
  end
end

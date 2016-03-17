class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @categories = Service.select(:category).uniq
  end
end

class AccountController < ApplicationController
  def show
    @user = current_user
    @profil = current_user.profils.first
    @cars = current_user.cars
    @orders = current_user.orders
    @categories = Service.categories
    authorize :account
  end

end

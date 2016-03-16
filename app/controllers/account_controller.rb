class AccountController < ApplicationController
  def show
    @profil = current_user.profils.first
    @car = current_user.cars
  end
end

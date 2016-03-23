class AddAddressToGrooms < ActiveRecord::Migration
  def change
    add_column :grooms, :address, :string
  end

  def show
  @groom = Groom.find(params[:id])
  @groom_coordinates = { lat: @groom.lat, lng: @groom.lng }
  @alert_message = "Votre concierge s'appelle #{@groom.name}"
  end
end

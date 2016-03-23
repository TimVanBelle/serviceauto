class AddCoordinatesToGrooms < ActiveRecord::Migration
  def change
    add_column :grooms, :latitude, :float
    add_column :grooms, :longitude, :float
  end
end

class AddModelToCar < ActiveRecord::Migration
  def change
    add_column :cars, :model, :string
  end
end

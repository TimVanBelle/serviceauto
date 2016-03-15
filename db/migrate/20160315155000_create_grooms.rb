class CreateGrooms < ActiveRecord::Migration
  def change
    create_table :grooms do |t|
      t.string :name
      t.string :picture
      t.string :mail
      t.string :rib
      t.string :driving_licence
      t.string :phone_number

      t.timestamps null: false
    end
  end
end

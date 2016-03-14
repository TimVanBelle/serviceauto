class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :registration_plate
      t.string :car_maker
      t.string :color
      t.integer :mileage
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :service_type
      t.float :price
      t.string :pick_up_place
      t.string :return_place
      t.string :service_address
      t.text :comment
      t.references :customer, references: :users
      t.references :groom, references: :users
      t.references :car, index: true, foreign_key: true
      t.boolean :status

      t.timestamps null: false
    end
  end
end

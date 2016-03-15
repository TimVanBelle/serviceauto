class CreatePrestataires < ActiveRecord::Migration
  def change
    create_table :prestataires do |t|
      t.string :name
      t.string :address
      t.string :picture

      t.timestamps null: false
    end
  end
end

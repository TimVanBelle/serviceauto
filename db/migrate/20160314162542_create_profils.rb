class CreateProfils < ActiveRecord::Migration
  def change
    create_table :profils do |t|
      t.string :first_name
      t.string :last_name
      t.string :mail
      t.string :picture
      t.string :phone_number
      t.string :address
      t.string :rib
      t.string :driving_licence
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

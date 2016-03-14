class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.float :price
      t.text :content
      t.string :title
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

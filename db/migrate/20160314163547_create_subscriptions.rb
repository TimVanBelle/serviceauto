class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.float :price
      t.text :content
      t.string :status
      t.datetime :start_date
      t.datetime :end_time
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

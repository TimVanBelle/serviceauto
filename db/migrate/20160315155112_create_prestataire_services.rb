class CreatePrestataireServices < ActiveRecord::Migration
  def change
    create_table :prestataire_services do |t|
      t.references :prestataire, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

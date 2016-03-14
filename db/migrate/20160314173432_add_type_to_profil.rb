class AddTypeToProfil < ActiveRecord::Migration
  def change
    add_column :profils, :type, :string
  end
end

class RemoveColumnInformationsToProfils < ActiveRecord::Migration
  def change
    remove_column :profils, :rib, :string
    remove_column :profils, :driving_licence, :string
  end
end

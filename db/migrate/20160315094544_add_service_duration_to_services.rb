class AddServiceDurationToServices < ActiveRecord::Migration
  def change
    add_column :services, :service_duration, :time
  end
end

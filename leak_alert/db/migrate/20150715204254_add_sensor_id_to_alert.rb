class AddSensorIdToAlert < ActiveRecord::Migration
  def change
    add_column :alerts, :sensor_id, :integer;
  end
end

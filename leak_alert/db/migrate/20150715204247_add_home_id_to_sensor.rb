class AddHomeIdToSensor < ActiveRecord::Migration
  def change
    add_column :sensors, :home_id, :integer;
  end
end

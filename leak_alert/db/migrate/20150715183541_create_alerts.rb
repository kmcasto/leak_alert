class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :message
      t.datetime :published_at

      t.timestamps
    end
  end
end

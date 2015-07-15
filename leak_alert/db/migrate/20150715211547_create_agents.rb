class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end

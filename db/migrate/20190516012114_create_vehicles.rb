class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles, :id => false do |t|
      t.string :vehicle_identifier, primary_key: true

      t.timestamps
    end
    add_index :vehicles, :vehicle_identifier, unique: true
  end
end
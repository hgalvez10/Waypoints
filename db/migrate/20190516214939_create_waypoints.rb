class CreateWaypoints < ActiveRecord::Migration[5.1]
  def change
    create_table :waypoints do |t|
      t.string :vehicle_id, index: true
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
    add_foreign_key :waypoints, :vehicles, column: :vehicle_id, primary_key: :vehicle_identifier
  end
end

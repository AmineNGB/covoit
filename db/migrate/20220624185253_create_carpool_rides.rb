class CreateCarpoolRides < ActiveRecord::Migration[7.0]
  def change
    create_table :carpool_rides do |t|
      t.string :departure_address
      t.string :arrival_address
      t.datetime :ride_date
      t.integer :passenger_number

      t.timestamps
    end
  end
end

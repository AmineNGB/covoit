class AddCoordinatesToCarpoolRides < ActiveRecord::Migration[7.0]
  def change
    add_column :carpool_rides, :latitude, :float
    add_column :carpool_rides, :longitude, :float
  end
end

class AddKeysToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :passenger_id, :integer
    add_column :bookings, :flight_id, :integer 
  end
end

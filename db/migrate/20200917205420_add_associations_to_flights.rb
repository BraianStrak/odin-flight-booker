class AddAssociationsToFlights < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :arrival_id, :integer
    add_column :flights, :departure_id, :integer
  end
end

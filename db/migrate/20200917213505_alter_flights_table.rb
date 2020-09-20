class AlterFlightsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :seconds_duration, :integer
    remove_column :flights, :duration
  end
end

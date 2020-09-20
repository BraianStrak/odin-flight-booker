class RemoveIncorrectForeignKeys < ActiveRecord::Migration[6.0]
  def change
    remove_column :flights, :arrival_id
    remove_column :flights, :departure_id
  end
end

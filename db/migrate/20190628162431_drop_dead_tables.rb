class DropDeadTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :car_expenses
    drop_table :cars
  end
end

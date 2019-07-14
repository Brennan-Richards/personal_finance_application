class DropCarExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :car_expenses
    drop_table :car_expenses
  end
end

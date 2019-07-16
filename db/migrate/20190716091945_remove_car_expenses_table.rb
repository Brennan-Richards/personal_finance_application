class RemoveCarExpensesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :car_expenses
  end
end

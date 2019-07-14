class SalaryToInteger < ActiveRecord::Migration[5.2]
  def change
    remove_column :specs, :salary

    add_column :specs, :salary, :integer
  end
end

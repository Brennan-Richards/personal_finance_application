class CarExpsToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :carexps, :gas, :float
    change_column :carexps, :maintenance, :float
    change_column :carexps, :insurance, :float
    change_column :carexps, :taxes, :float
    change_column :carexps, :payment, :float
  end
end

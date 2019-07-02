class CarexpToDecimals < ActiveRecord::Migration[5.2]
  def change
    remove_column :carexps, :gas
    remove_column :carexps, :maintenance
    remove_column :carexps, :insurance
    remove_column :carexps, :payment
    remove_column :carexps, :taxes

    add_column :carexps, :gas, :decimal,
                  :precision => 11, :scale => 2
    add_column :carexps, :maintenance, :decimal,
                  :precision => 11, :scale => 2
    add_column :carexps, :insurance, :decimal,
                  :precision => 11, :scale => 2
    add_column :carexps, :taxes, :decimal,
                  :precision => 11, :scale => 2
    add_column :carexps, :payment, :decimal,
                  :precision => 11, :scale => 2

  end
end

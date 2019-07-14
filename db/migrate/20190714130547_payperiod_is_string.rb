class PayperiodIsString < ActiveRecord::Migration[5.2]
  def change
    remove_column :taxes, :payperiod

    add_column :taxes, :payperiod, :string
  end
end

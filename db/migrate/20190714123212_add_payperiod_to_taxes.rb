class AddPayperiodToTaxes < ActiveRecord::Migration[5.2]
  def change
    add_column :taxes, :payperiod, :decimal, :precision => 11, :scale => 2
  end
end

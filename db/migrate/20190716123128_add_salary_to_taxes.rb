class AddSalaryToTaxes < ActiveRecord::Migration[5.2]
  def change
    add_column :taxes, :salary, :integer
  end
end

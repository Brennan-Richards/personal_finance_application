class AddIncomeTaxFedAndState < ActiveRecord::Migration[5.2]
  def change
    add_column :taxes, :sincome, :integer
    add_column :taxes, :fincome, :integer
  end
end

class TaxesToDecimals < ActiveRecord::Migration[5.2]
  def change
    remove_column :taxes, :salary
    remove_column :taxes, :dependents
    remove_column :taxes, :selfemployed
    remove_column :taxes, :sincome
    remove_column :taxes, :fincome

    add_column :taxes, :salary, :decimal,
                  :precision => 11, :scale => 2
    add_column :taxes, :sincome, :decimal,
                  :precision => 11, :scale => 2
    add_column :taxes, :fincome, :decimal,
                  :precision => 11, :scale => 2
    add_column :taxes, :medicare, :decimal,
                  :precision => 11, :scale => 2
    add_column :taxes, :disability, :decimal,
                  :precision => 11, :scale => 2
    add_column :taxes, :socialsecurity, :decimal,
                  :precision => 11, :scale => 2
  end
end

class AddSpecs < ActiveRecord::Migration[5.2]
  def change
    create_table :specs do |t|
      t.decimal :salary, :precision => 11, :scale => 2

      t.string :payperiod
    end
      remove_column :taxes, :salary
      remove_column :taxes, :payperiod
  end
end

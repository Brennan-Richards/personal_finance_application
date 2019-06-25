class CreateTaxes < ActiveRecord::Migration[5.2]
  def change
    create_table :taxes do |t|
      t.float :salary
      t.integer :dependents
      t.boolean :selfemployed

      t.timestamps
    end
  end
end

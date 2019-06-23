class CreateCarexps < ActiveRecord::Migration[5.2]
  def change
    create_table :carexps do |t|
      t.integer :gas
      t.integer :maintenance
      t.integer :insurance
      t.integer :taxes

      t.timestamps
    end
  end
end

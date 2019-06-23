class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.integer :gas
      t.integer :maintenace
      t.integer :insurance
      t.integer :taxes

      t.timestamps
    end
  end
end

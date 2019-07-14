class CreateSpecs < ActiveRecord::Migration[5.2]
  def change
    create_table :specs do |t|
      t.decimal :salary, precision: 11, scale: 2
      t.string :payperiod

      t.timestamps
    end
  end
end

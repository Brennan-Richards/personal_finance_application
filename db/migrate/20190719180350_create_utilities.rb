class CreateUtilities < ActiveRecord::Migration[5.2]
  def change
    create_table :utilities do |t|
      t.integer :electricity
      t.integer :heating
      t.integer :phone
      t.integer :cable
      t.integer :internet

      t.timestamps
    end
  end
end

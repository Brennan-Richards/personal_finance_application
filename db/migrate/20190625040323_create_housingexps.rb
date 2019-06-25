class CreateHousingexps < ActiveRecord::Migration[5.2]
  def change
    create_table :housingexps do |t|
      t.integer :mortgage
      t.integer :utilities
      t.integer :propertytax

      t.timestamps
    end
  end
end

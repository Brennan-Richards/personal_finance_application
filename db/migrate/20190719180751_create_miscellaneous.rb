class CreateMiscellaneous < ActiveRecord::Migration[5.2]
  def change
    create_table :miscellaneous do |t|
      t.integer :healthinsurance
      t.integer :entertainment
      t.integer :other

      t.timestamps
    end
  end
end

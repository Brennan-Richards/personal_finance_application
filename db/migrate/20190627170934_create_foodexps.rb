class CreateFoodexps < ActiveRecord::Migration[5.2]
  def change
    create_table :foodexps do |t|
      t.integer :monthlyfood

      t.timestamps
    end
  end
end

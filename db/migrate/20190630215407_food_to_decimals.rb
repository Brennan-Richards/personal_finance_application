class FoodToDecimals < ActiveRecord::Migration[5.2]
  def change
    remove_column :foodexps, :monthlyfood

    add_column :foodexps, :monthlyfood, :decimal,
                  :precision => 11, :scale => 2
  end
end

class AddDinnerToFoodexp < ActiveRecord::Migration[5.2]
  def change
    add_column :foodexps, :dinner, :integer
  end
end

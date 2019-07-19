class AddWaterToUtilities < ActiveRecord::Migration[5.2]
  def change
    add_column :utilities, :water, :integer
  end
end

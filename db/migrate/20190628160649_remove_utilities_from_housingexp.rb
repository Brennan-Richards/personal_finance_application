class RemoveUtilitiesFromHousingexp < ActiveRecord::Migration[5.2]
  def change
    remove_column :housingexps, :utilities
    add_column :housingexps, :electricity, :integer
    add_column :housingexps, :heating, :integer
    add_column :housingexps, :water, :integer
    add_column :housingexps, :entertainment, :integer

  end
end

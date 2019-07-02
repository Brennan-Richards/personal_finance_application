class HousingDataToDecimals < ActiveRecord::Migration[5.2]
  def change
    remove_column :housingexps, :mortgage
    remove_column :housingexps, :propertytax
    remove_column :housingexps, :electricity
    remove_column :housingexps, :heating
    remove_column :housingexps, :water
    remove_column :housingexps, :entertainment

    add_column :housingexps, :mortgage, :decimal,
                  :precision => 11, :scale => 2
    add_column :housingexps, :propertytax, :decimal,
                  :precision => 11, :scale => 2
    add_column :housingexps, :electricity, :decimal,
                  :precision => 11, :scale => 2
    add_column :housingexps, :heating, :decimal,
                  :precision => 11, :scale => 2
    add_column :housingexps, :water, :decimal,
                  :precision => 11, :scale => 2
    add_column :housingexps, :entertainment, :decimal,
                  :precision => 11, :scale => 2
  end
end

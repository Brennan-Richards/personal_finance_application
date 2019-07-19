class AppendHousingexp < ActiveRecord::Migration[5.2]
  def change
    add_column :housingexps, :firetax, :integer
    add_column :housingexps, :homeinsurance, :integer
    remove_column :housingexps, :electricity
    remove_column :housingexps, :heating
    remove_column :housingexps, :water
    remove_column :housingexps, :entertainment
  end
end

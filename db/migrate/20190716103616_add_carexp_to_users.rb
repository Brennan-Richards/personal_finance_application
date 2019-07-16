class AddCarexpToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :carexps, :user, index: true
    add_reference :housingexps, :user, index: true
    add_reference :foodexps, :user, index: true
    add_reference :taxes, :user, index: true
    add_reference :specs, :user, index: true
  end
end

class AddRefTrackExpOnUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :carexp, index: true
    add_reference :users, :housingexp, index: true
    add_reference :users, :foodexp, index: true
    add_reference :users, :tax, index: true
    add_reference :users, :spec, index: true


  end
end

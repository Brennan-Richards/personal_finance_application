class AddUtilityAndMiscReferences < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :utility, index: true
    add_reference :users, :miscexp, index: true
    add_reference :miscexps, :user, index: true
    add_reference :utilities, :user, index: true
  end
end

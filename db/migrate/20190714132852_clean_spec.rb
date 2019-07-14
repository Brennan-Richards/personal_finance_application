class CleanSpec < ActiveRecord::Migration[5.2]
  def change
    drop_table :specs
  end
end

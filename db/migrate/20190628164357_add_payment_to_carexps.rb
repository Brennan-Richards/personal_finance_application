class AddPaymentToCarexps < ActiveRecord::Migration[5.2]
  def change
    add_column :carexps, :payment, :integer
  end
end

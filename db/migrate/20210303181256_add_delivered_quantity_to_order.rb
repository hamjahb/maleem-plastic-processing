class AddDeliveredQuantityToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :delivered_quantity, :integer
    change_column_default :orders, :delivered_quantity, 0
  end
end

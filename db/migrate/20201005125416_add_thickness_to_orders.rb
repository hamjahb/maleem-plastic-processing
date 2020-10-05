class AddThicknessToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :thickness, :integer
    change_column_null :orders, :thickness, false
  end
end

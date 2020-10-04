class AddDefaultsAndNullToOrder < ActiveRecord::Migration[6.0]
  def change
    change_column_null :orders, :order_weight_kg, false
    change_column_default :orders, :total_printed_kg, 0
  end
end

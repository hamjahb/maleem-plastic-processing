class DefaultBoxesToOrders < ActiveRecord::Migration[6.0]
  def change
    change_column_default :orders, :total_boxes, 0
  end
end

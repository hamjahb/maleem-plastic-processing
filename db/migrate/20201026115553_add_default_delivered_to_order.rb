class AddDefaultDeliveredToOrder < ActiveRecord::Migration[6.0]
  def change
    change_column_default :orders, :delivered, false
  end
end

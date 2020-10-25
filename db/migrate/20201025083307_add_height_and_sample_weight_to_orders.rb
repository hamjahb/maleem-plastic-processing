class AddHeightAndSampleWeightToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :height, :integer
    add_column :orders, :unit_weight, :integer

    change_column_default :orders, :height, 0
    change_column_default :orders, :unit_weight, 0
  end
end

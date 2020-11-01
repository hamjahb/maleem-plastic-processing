class AddPackingWeightToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :packing_weight, :integer

    change_column_default :orders, :packing_weight, 0
  end
end

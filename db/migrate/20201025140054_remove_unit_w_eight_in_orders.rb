class RemoveUnitWEightInOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :unit_weight, :integer
    remove_column :orders, :total_boxed_weight, :integer
  end
end

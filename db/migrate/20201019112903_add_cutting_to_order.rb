class AddCuttingToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :cut_complete, :boolean
    add_column :orders, :total_boxed_weight, :integer

    

    change_column_default :orders, :cut_complete, false
    change_column_default  :orders, :total_boxed_weight, 0
  end
end

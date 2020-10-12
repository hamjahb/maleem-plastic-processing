class AddPrintedAndTotalPrintedToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :print_complete, :boolean
    add_column :orders, :total_printed_weight, :integer

    change_column_default :orders, :print_complete, false
    change_column_default  :orders, :total_printed_weight, 0
  end
end

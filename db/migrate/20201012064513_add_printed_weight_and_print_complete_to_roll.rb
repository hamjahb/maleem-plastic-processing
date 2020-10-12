class AddPrintedWeightAndPrintCompleteToRoll < ActiveRecord::Migration[6.0]
  def change
    add_column :rolls, :printed_weight, :integer
    rename_column :rolls, :ink_complete, :roll_print_complete

    change_column_default :rolls, :printed_weight, 0
    change_column_default  :rolls, :roll_print_complete, false
  end
end

class AddCuttingToRolls < ActiveRecord::Migration[6.0]
  def change
    add_column :rolls, :number_of_boxes, :integer
    rename_column :rolls, :cut_complete, :roll_cut_complete

    change_column_default :rolls, :number_of_boxes, 0
    change_column_default  :rolls, :roll_cut_complete, false
  end
end

class AddQaTestWeightToRolls < ActiveRecord::Migration[6.0]
  def change
    add_column :rolls, :qa_sample_weight, :integer
    
    change_column_default :rolls, :qa_sample_weight, 0
    change_column_null :rolls, :qa_sample_weight, false
  end
end

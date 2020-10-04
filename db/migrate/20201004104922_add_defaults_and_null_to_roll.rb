class AddDefaultsAndNullToRoll < ActiveRecord::Migration[6.0]
  def change
    change_column_null :rolls, :machine_number, false
    change_column_null :rolls, :roll_weight, false
    change_column_null :rolls, :operator_name, false
  end
end

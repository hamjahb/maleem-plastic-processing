class AddDefaultFillerToOrder < ActiveRecord::Migration[6.0]
  def change
    change_column_default :orders, :filler, 0
  end
end

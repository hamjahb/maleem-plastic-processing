class MasterbatchDefaultNone < ActiveRecord::Migration[6.0]
  def change
    change_column_default :orders, :masterbatch, "None"
  end
end

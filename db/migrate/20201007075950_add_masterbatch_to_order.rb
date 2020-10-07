class AddMasterbatchToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :masterbatch, :string
  end
end

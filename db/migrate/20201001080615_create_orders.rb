class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.integer :film_width
      t.string :material
      t.decimal :filler
      t.string :specifications
      t.string :size
      t.integer :order_weight_kg
      t.integer :total_printed_kg
      t.integer :total_boxes
      t.boolean :gusset
      t.boolean :delivered

      t.timestamps
    end
  end
end

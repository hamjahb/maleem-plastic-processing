class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.timestamp :order_date
      t.string :customer_name
      t.string :material
      t.decimal :filler
      t.string :specifications
      t.integer :order_weight_KG
      t.integer :total_printed_KG
      t.integer :total_boxes
      t.boolean :gusset
      t.boolean :delivered

      t.timestamps
    end
  end
end

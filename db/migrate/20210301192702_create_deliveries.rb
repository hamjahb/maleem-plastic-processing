class CreateDeliveries < ActiveRecord::Migration[6.0]
  def change
    create_table :deliveries do |t|
      t.references :order, null: false, foreign_key: true
      t.integer :quantity
      t.integer :delivery_note_number
      t.date :delivery_date
      t.string :driver_name

      t.timestamps
    end
  end
end

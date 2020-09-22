class CreateRolls < ActiveRecord::Migration[6.0]
  def change
    create_table :rolls do |t|
      t.references :order, null: false, foreign_key: true
      t.integer :machine_number
      t.integer :roll_weight
      t.boolean :ink_complete
      t.boolean :gusset_complete
      t.boolean :cut_complete

      t.timestamps
    end
  end
end

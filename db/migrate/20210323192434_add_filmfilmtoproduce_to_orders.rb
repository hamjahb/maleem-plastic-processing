class AddFilmfilmtoproduceToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :film_to_produce, :integer
  end
end

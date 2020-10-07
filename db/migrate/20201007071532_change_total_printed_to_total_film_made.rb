class ChangeTotalPrintedToTotalFilmMade < ActiveRecord::Migration[6.0]
  def change
    rename_column :orders, :total_printed_kg, :total_film_made
  end
end

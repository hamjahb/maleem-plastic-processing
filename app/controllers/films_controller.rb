class FilmsController < ApplicationController
  def index
    @orders = Order.where("total_film_made < order_weight_kg")
  end
end

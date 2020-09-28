class FilmsController < ApplicationController
  def index
    @orders = Order.where("total_printed_kg < order_weight_kg")
  end
end

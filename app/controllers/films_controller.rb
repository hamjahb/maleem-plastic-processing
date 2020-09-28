class FilmsController < ApplicationController
  def index
    @orders = Order.where("total_printed_KG < order_weight_KG")
  end
end

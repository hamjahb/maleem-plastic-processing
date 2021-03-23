class FilmsController < ApplicationController
  def index
    @orders = Order.where("total_film_made < film_to_produce").order(:id)
  end
end

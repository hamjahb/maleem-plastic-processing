class DeliveriesController < ApplicationController
  def index
    @orders = Order.where(("delivered= false") && ("cut_complete= true")).order(:id)
  end

  def edit
  end
end

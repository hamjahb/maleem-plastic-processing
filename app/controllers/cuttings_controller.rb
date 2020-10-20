class CuttingsController < ApplicationController
  def index
    @orders = Order.where(cut_complete:  false)
  end

  def view
  end

  def edit
  end
end

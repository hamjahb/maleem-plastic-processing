class PrintingsController < ApplicationController
  def index
    @orders = Order.where(print_complete:  false)
  end

  def show
  end

  def edit
  end
end

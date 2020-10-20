class CuttingsController < ApplicationController
  def index
    @orders = Order.where(cut_complete:  false)
  end

  def view
    @order = Order.find(params[:order_id])
    @rolls = @order.rolls.where(roll_cut_complete: false, roll_print_complete: true)
  end

  def edit
  end
end

class PrintingsController < ApplicationController
  def index
    @orders = Order.where(print_complete:  false)
  end

  def show
    @order = Order.find(params[:order_id])
    @rolls = @order.rolls.where(roll_print_complete: false)
  end

  def edit
  end
end

class PrintingsController < ApplicationController
  
  def index
    @orders = Order.where(print_complete:  false)
  end

  def show
    @order = Order.find(params[:order_id])
    @rolls = @order.rolls.where(roll_print_complete: false)
  end

  def edit
    @roll = Roll.find(params[:id])
    @order = @roll.order_id
    @path = @roll
  end

  def update
    respond_to do |format|
      if @roll.update(roll_params)
        format.html { redirect_to printings_path, notice: 'Roll was successfully updated.' }
        format.json { render :show, status: :ok, location: @roll }
      else
        format.html { render :edit }
        format.json { render json: @roll.errors, status: :unprocessable_entity }
      end
    end
  end

  
  private


  # Only allow a list of trusted parameters through.
  def roll_params
    params.require(:roll).permit(:printed_weight)
  end



end

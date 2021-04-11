class CuttingsController < ApplicationController
  def index
    # @orders = Order.where(print_complete: true)
    # @orders = @orders.where(cut_complete: false).order(:id)

    @orders = Order.where(cut_complete: false).order(:id)
  end

  def view
    @order = Order.find(params[:order_id])
    @rolls = @order.rolls.where(roll_cut_complete: false, roll_print_complete: true)
  end

  def edit
    @roll = Roll.find(params[:id])
  end

  def update
    respond_to do |format|
      @roll = Roll.find(params[:id])
      if @roll.update(roll_params)
        format.html { redirect_to cuttings_path, notice: 'Roll was successfully updated.' }
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
    params.require(:roll).permit(:roll_cut_complete, :number_of_boxes)
  end

end

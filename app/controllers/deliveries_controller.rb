class DeliveriesController < ApplicationController
  def index
    @orders = Order.where(cut_complete: true)
    @orders = @orders.where(delivered: false).order(:id)
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    respond_to do |format|
      @order = Order.find(params[:id])
      if @order.update(order_params)
        format.html { redirect_to deliveries_path, notice: 'Order was successfully Delivered.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end


  private

  # Only allow a list of trusted parameters through.
  def order_params
    params.require(:order).permit(:delivered)
  end

end

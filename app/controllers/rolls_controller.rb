class RollsController < ApplicationController
  before_action :set_roll, only: [:show, :edit, :update, :destroy]
  before_action :get_order_id, only: [:new, :create]

  # GET /rolls
  # GET /rolls.json
  def index
    @rolls = Roll.all
  end

  # GET /rolls/1
  # GET /rolls/1.json
  def show
  end

  # GET /rolls/new
  def new
    # @roll = Roll.new
    @order = Order.find(params[:order_id])
    @roll = @order.rolls.new
    @path = [@order, @roll]
  end

  # GET /rolls/1/edit
  def edit
    @roll = Roll.find(params[:id])
    @order = @roll.order_id
    @path = @roll
  end

  # POST /rolls
  # POST /rolls.json
  def create
    @order = Order.find(params[:order_id])
    @roll = @order.rolls.new(roll_params)

    respond_to do |format|
      if @roll.save
        format.html { redirect_to @roll, notice: 'Roll was successfully created.' }
        format.json { render :show, status: :created, location: @roll }
      else
        format.html { render :new }
        format.json { render json: @roll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rolls/1
  # PATCH/PUT /rolls/1.json
  def update
    respond_to do |format|
      if @roll.update(roll_params)
        format.html { redirect_to @roll, notice: 'Roll was successfully updated.' }
        format.json { render :show, status: :ok, location: @roll }
      else
        format.html { render :edit }
        format.json { render json: @roll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rolls/1
  # DELETE /rolls/1.json
  def destroy
    @roll.destroy
    respond_to do |format|
      format.html { redirect_to rolls_url, notice: 'Roll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roll
      @roll = Roll.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def roll_params
      params.require(:roll).permit(:order_id, :machine_number, :roll_weight, :ink_complete, :gusset_complete, :cut_complete, :operator_name)
    end

    # Used to get order ID for roll
    def get_order_id
      @Order = Order.find(params[:order_id])
    end
end

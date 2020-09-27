class Roll < ApplicationRecord
  belongs_to :order

  after_commit :update_order_printed



  private
  def update_order_printed
    sum_of_order_rolls = Roll.where(order_id: order_id).sum(:roll_weight)
    order.update(total_printed_KG: sum_of_order_rolls)
  end
end

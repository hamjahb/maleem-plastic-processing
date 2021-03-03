class Delivery < ApplicationRecord
  belongs_to :order

  after_commit :update_order_delivered_quantity

  private
  # updates order printed weight after commiting a new roll
  def update_order_delivered_quantity
    sum_of_delivered_quantity = Delivery.where(order_id: order_id).sum(:quantity)
    order.update(delivered_quantity: sum_of_delivered_quantity)
  end

end

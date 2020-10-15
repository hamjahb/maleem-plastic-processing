class Roll < ApplicationRecord
  belongs_to :order
  
  after_commit :update_order_film, :update_total_printed, :update_order_done_printing



  private
  # updates order printed weight after commiting a new roll
  def update_order_film
    sum_of_order_rolls = Roll.where(order_id: order_id).sum(:roll_weight)
    order.update(total_film_made: sum_of_order_rolls)
  end

  # updates the total printed for an order when a roll is finished printing
  def update_total_printed
    sum_of_of_printed_rolls = Roll.where(order_id: order_id).sum(:printed_weight)
    order.update(total_printed_weight: sum_of_of_printed_rolls)
  end

  # if there are no more rolls to be printed in an order complete printing
  def update_order_done_printing
    all_order_rolls = Roll.where(order_id: order_id)
    if all_order_rolls.where('roll_print_complete = ?', false).count == 0
      order.update(print_complete: true)

    else
      order.update(print_complete: false)
    end
  end
  
end

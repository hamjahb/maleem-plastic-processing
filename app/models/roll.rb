class Roll < ApplicationRecord
  belongs_to :order

  after_create :update_order_printed

  def update_order_printed

    # old_weight = 200
    # new_roll_weight = 500
    # self.new_weight = 
    # puts "after create workingu!!!!!!!!!!!!!!!!!!!!!!!1"
    # order.update_attribute(:total_printed_KG, new_weight)
    
  end
end

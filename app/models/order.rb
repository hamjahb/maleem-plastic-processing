class Order < ApplicationRecord
    has_many :rolls,  dependent: :destroy

    # after_create :calculate_unit_weight

    # private
    # # calculates the weight of a unit based on (1000 / (thickness / 1000) / whidth / height / 0.184)
    # def calculate_unit_weight
    #     puts 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXxx'
    #     order_height = Order.where(id: id).select(:height)
    #     order_width = Order.where(id: id).select(:film_width)
    #     order_thickness = Order.where(id: id).select('thickness / 1000')

    #     # thickness_by_thousund = order_thickness / 1000

    #     unit_weight = 1000/ order_thickness/ order_height/ order_width / 0.184

    #     order.update(unit_weight: unit_weight)
    
    # end
end

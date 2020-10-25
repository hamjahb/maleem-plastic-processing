module FilmsHelper
    # calculates the weight of a unit based on (1000 / (thickness / 1000) / whidth / height / 0.184)
    def calculate_unit_weight(thickness, width, height)
        order_height = height.to_f
        order_width = width.to_f
        order_thickness = thickness/ 1000.to_f

        piece_per_kg = 1000/ order_thickness/ order_height/ order_width / 0.184
        return (1000/ piece_per_kg).round(2)
    
    end
end

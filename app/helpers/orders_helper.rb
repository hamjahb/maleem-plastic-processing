module OrdersHelper

    def calculate_pieces_per_kg(thickness, width, height)
        order_height = height.to_f
        order_width = width.to_f
        order_thickness = thickness/ 1000.to_f

        return piece_per_kg = (1000/ order_thickness/ order_height/ order_width / 0.184).round(2)
    end

    def calculate_unit_weight(thickness, width, height)
        return (1000/ calculate_pieces_per_kg(thickness, width, height)).round(2)
    end

end

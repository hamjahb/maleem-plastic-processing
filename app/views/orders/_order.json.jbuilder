json.extract! order, :id, :customer_name, :film_width, :material, :filler, :specifications, :size, :order_weight_kg, :total_printed_kg, :total_boxes, :gusset, :delivered, :created_at, :updated_at
json.url order_url(order, format: :json)

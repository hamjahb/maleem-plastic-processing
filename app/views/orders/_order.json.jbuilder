json.extract! order, :id, :order_date, :customer_name, :material, :filler, :specifications, :order_weight_KG, :total_printed_KG, :total_boxes, :gusset, :delivered, :created_at, :updated_at
json.url order_url(order, format: :json)

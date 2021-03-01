json.extract! delivery, :id, :order_id, :quantity, :delivery_note_number, :delivery_date, :driver_name, :created_at, :updated_at
json.url delivery_url(delivery, format: :json)

json.extract! message, :id, :name, :email, :phone, :msg, :created_at, :updated_at
json.url message_url(message, format: :json)

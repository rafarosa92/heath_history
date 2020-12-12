json.extract! shared_history, :id, :shared_user_id, :owner_user_id, :appointment_id, :expiration_date, :created_at, :updated_at
json.url shared_history_url(shared_history, format: :json)

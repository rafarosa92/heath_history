json.extract! appointment, :id, :title, :health_professional_user_id, :patient_user_id, :date, :return_date, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)

json.extract! user, :id, :email, :password, :password_confirmation, :name, :birthdate, :kind, :created_at, :updated_at
json.url user_url(user, format: :json)

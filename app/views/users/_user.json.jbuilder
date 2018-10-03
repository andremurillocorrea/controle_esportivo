json.extract! user, :id, :name, :email, :document, :pwd, :age, :height, :weight, :category, :description, :created_at, :updated_at, :role
json.url user_url(user, format: :json)

json.extract! profile, :id, :name, :birth_date, :Document, :address, :email, :phone, :photo_url, :status, :created_at, :updated_at
json.url profile_url(profile, format: :json)

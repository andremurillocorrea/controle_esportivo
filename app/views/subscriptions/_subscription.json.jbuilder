json.extract! subscription, :id, :user_id, :event_id, :status, :additional_info, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)

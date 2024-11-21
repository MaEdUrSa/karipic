json.extract! photo, :id, :comment, :user_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)

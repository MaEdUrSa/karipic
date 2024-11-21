json.extract! observation, :id, :content, :photo_id, :user_id, :created_at, :updated_at
json.url observation_url(observation, format: :json)

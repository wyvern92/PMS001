json.extract! authentication, :id, :user_id, :user_name, :created_at, :updated_at
json.url authentication_url(authentication, format: :json)

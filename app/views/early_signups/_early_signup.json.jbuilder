json.extract! early_signup, :id, :email, :signed_up, :created_at, :updated_at
json.url early_signup_url(early_signup, format: :json)
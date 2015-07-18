json.array!(@users) do |user|
  json.extract! user, :id, :email, :username, :password_digest, :role, :points, :image
  json.url user_url(user, format: :json)
end

json.array!(@challenges) do |challenge|
  json.extract! challenge, :id, :name, :description, :image, :video, :category_id
  json.url challenge_url(challenge, format: :json)
end

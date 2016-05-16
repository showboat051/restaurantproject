json.array!(@api_v1_foods) do |api_v1_food|
  json.extract! api_v1_food, :id
  json.url api_v1_food_url(api_v1_food, format: :json)
end

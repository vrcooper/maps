json.array!(@food_incubators) do |food_incubator|
 json.extract! user, :latitude, :longitude, :address, :organization, :organization_profile
 json.url food_incubator_url(food_incubator, format: :json)
 end
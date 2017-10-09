json.array!(@accelerators) do |accelerator|
 json.extract! user, :latitude, :longitude, :address, :organization, :organization_profile
 json.url accelerator_url(accelerator, format: :json)
 end
 
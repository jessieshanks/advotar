json.array!(@warriors) do |warrior|
  json.extract! warrior, :id, :name, :birthdate
  json.url warrior_url(warrior, format: :json)
end

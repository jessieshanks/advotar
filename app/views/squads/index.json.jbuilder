json.array!(@squads) do |squad|
  json.extract! squad, :id, :name, :motto
  json.url squad_url(squad, format: :json)
end

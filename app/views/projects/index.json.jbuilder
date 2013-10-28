json.array!(@projects) do |project|
  json.extract! project, :created_at, :updated_at
  json.url projects_url(project, format: :json)
end

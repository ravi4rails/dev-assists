json.extract! project, :id, :title, :description, :duration, :role, :url, :developer_id, :created_at, :updated_at
json.url project_url(project, format: :json)

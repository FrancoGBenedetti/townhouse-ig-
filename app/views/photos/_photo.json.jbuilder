json.extract! photo, :id, :image, :project_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)

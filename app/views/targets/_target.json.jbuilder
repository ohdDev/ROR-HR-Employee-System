json.extract! target, :id, :title, :description, :start_date, :finish_date, :status, :created_at, :updated_at
json.url target_url(target, format: :json)

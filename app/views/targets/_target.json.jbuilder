json.extract! target, :id, :title, :description, :start_date, :finish_date, :t_attribute, :team, :status, :created_at, :updated_at
json.url target_url(target, format: :json)

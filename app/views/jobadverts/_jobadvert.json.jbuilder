json.extract! jobadvert, :id, :title, :description, :vacancies, :employer_id, :category_id, :city_id, :created_at, :updated_at
json.url jobadvert_url(jobadvert, format: :json)

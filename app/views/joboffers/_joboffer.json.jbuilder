json.extract! joboffer, :id, :title, :description, :image, :budget, :region_id, :commune_id, :city_id, :user_id, :skill_id, :created_at, :updated_at
json.url joboffer_url(joboffer, format: :json)

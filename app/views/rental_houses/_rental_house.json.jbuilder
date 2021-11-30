json.extract! rental_house, :id, :name, :fee, :address, :age, :remarks, :created_at, :updated_at
json.url rental_house_url(rental_house, format: :json)

json.extract! pet, :id, :name, :type, :size, :gender, :id_user, :id_city, :created_at, :updated_at
json.url pet_url(pet, format: :json)

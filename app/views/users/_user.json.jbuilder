json.extract! user, :id, :first_name, :last_name, :age
json.url user_url(user, format: :json)

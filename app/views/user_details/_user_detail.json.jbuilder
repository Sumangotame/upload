json.extract! user_detail, :id, :Name, :User_id, :photo, :Address, :created_at, :updated_at
json.url user_detail_url(user_detail, format: :json)

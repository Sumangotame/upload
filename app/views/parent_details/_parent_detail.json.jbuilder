json.extract! parent_detail, :id, :User_detail_id, :first_name, :last_name, :Address, :phone_number, :email, :created_at, :updated_at
json.url parent_detail_url(parent_detail, format: :json)

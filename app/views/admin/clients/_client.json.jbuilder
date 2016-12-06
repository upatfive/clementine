json.extract! client, :id, :name, :main_contact, :main_email, :industry, :created_at, :updated_at
json.url client_url(client, format: :json)
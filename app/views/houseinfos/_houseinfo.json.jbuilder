json.extract! houseinfo, :id, :house_id, :house_addrs, :house_description, :house_price, :house_guest, :created_at, :updated_at
json.url houseinfo_url(houseinfo, format: :json)

json.array!(@fundings) do |funding|
  json.extract! funding, :id, :pin_id, :user_id, :amount
  json.url funding_url(funding, format: :json)
end

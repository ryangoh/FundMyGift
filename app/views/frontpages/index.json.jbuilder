json.array!(@frontpages) do |frontpage|
  json.extract! frontpage, :id
  json.url frontpage_url(frontpage, format: :json)
end

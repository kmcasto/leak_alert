json.array!(@alerts) do |alert|
  json.extract! alert, :id, :message, :published_at
  json.url alert_url(alert, format: :json)
end

json.array!(@alerts) do |alert|
  json.extract! alert, :id, :name, :subject, :body, :enabled, :alert_type
  json.url alert_url(alert, format: :json)
end

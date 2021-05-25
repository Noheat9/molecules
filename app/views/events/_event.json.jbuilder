json.extract! event, :id, :start_date, :duration, :title, :text, :integer, :string, :created_at, :updated_at
json.url event_url(event, format: :json)

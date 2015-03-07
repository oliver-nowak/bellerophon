json.array!(@messages) do |message|
  json.extract! message, :id, :hash, :from, :to, :subject, :date, :document, :spam_probability
  json.url message_url(message, format: :json)
end

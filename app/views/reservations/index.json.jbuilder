json.array!(@reservations) do |event|
  json.extract! reservation, :id, :title, :body
  json.start reservation.start_date
  json.end reservation.end_date
  json.url event_url(event)
end
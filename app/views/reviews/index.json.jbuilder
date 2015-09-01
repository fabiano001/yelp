json.array!(@reviews) do |review|
  json.extract! review, :id, :review_text, :rating
  json.url review_url(review, format: :json)
end

json.extract! card, :id, :phrase_id, :deck_id, :status, :created_at, :updated_at
json.url card_url(card, format: :json)

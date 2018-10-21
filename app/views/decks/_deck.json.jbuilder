json.extract! deck, :id, :user_id, :language_id, :created_at, :updated_at
json.cards_count deck.cards.count
json.language_name deck.language.name
json.language_code deck.language.code
json.url deck_url(deck, format: :json)

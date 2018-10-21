class Card < ApplicationRecord
  belongs_to :phrase
  belongs_to :deck
  validates :deck, presence: true
  validates :phrase, presence: true
  # validates: phrase.language = deck.language
  has_one :language, through: :phrase
  has_one :user, through: :deck
  has_many :translations, through: :phrase
end

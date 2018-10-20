class Card < ApplicationRecord
  belongs_to :phrase
  belongs_to :deck
  validates :deck, presence: true
  validates :phrase, presence: true
  has_one :language, through: :phrase
  has_one :user, through: :deck
  # add validation: phrase language should match deck language
end

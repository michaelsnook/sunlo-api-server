class Phrase < ApplicationRecord
  belongs_to :language
  validates :text, presence: true
  validates :language, presence: true
  has_many :cards
  has_many :translations

  def to_s
    text
  end
end

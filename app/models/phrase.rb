class Phrase < ApplicationRecord
  belongs_to :language
  validates :text, presence: true
  validates :language, presence: true

  def to_s
    text
  end
end

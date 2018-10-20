class Language < ApplicationRecord
  validates :name, uniqueness: true
  has_and_belongs_to_many :speakers, join_table: 'users_languages'
  has_many :learners, class_name: 'User', through: 'decks'
  has_many :decks

  def to_s
    name
  end
end

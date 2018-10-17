class Language < ApplicationRecord
  validates :name, uniqueness: true
  has_and_belongs_to_many :users, join_table: 'users_languages'
  has_many :users, through: 'decks'
  has_many :decks
end

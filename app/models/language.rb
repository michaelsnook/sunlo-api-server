class Language < ApplicationRecord
  validates :name, uniqueness: true
  has_and_belongs_to_many :users, join_table: 'users_languages'
end

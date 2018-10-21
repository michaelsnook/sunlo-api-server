class User < ApplicationRecord
  validates :email, uniqueness: true
  has_and_belongs_to_many :languages, join_table: 'users_languages'
  has_many :decks
  has_many :cards, through: :decks
  has_and_belongs_to_many :languages_learning, join_table: 'decks', class_name: 'Language'

  accepts_nested_attributes_for :users_languages

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

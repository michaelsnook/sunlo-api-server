class User < ApplicationRecord
  validates :email, uniqueness: true
  has_and_belongs_to_many :languages, join_table: 'users_languages'

  accepts_nested_attributes_for :users_languages

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

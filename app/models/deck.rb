class Deck < ApplicationRecord
  belongs_to :user
  belongs_to :language
  validates :user, presence: true
  validates :language, presence: true
  has_many :cards

  def to_s
    "#{ self.user.email } learning #{ self.language }"
  end
end

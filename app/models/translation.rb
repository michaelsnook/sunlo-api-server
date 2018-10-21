class Translation < ApplicationRecord
  belongs_to :phrase
  belongs_to :language

  def to_s
    text
  end
end

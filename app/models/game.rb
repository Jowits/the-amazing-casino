class Game < ApplicationRecord
  belongs_to :user
  has_many :blackjacks
  has_many :roulettes
  # validate if user is not on Casino blacklist
end

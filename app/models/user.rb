class User < ApplicationRecord
    has_secure_password
    has_many :games
    has_many :roulettes, through: :games
    has_many :blackjacks, through: :games

    validates :username, uniqueness: true
    validates :password, length: { in: 5..15 }
    
end

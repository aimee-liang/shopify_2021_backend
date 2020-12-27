class User < ApplicationRecord
    has_many :likes
    has_many :movies, through: :likes
end

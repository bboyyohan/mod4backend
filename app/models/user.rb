class User < ApplicationRecord
    has_many :user_owned_guns
    has_many :guns, through: :user_owned_guns
end

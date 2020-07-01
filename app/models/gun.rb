class Gun < ApplicationRecord
    belongs_to :bullet_type 
    has_many :user_owned_guns
    has_many :users, through: :user_owned_guns
end

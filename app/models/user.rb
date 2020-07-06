class User < ApplicationRecord
    has_many :user_owned_guns
    has_many :guns, through: :user_owned_guns
    has_secure_password
    #^ this will force all users to have a password, makes it so we dont need validates :password
    validates :username, uniqueness: { case_sensitive: false}
end

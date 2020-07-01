class UserOwnedGun < ApplicationRecord
    belongs_to :gun
    belongs_to :user
end

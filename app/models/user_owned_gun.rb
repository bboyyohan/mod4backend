class UserOwnedGun < ApplicationRecord
    belongs_to :user
    belongs_to :gun
end

class UserOwnedGunsController < ApplicationController

    def show
        # byebug
        user_owned_gun = UserOwnedGun.where(user_id: params[:id])
        render json: user_owned_gun
    end
end

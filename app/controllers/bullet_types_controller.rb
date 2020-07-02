class BulletTypesController < ApplicationController

    def index
        bullet_type = BulletType.all
        render json: bullet_type
    end
end

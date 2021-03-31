module Api
  module V1
    class FavouritesController < ApplicationController
      def index
        @favs = @current_user.favourited_wods
        json_response(@favs)
      end

      def create
        if @current_user.favourites.exists?(wod_id: params[:favourite_id])
          render json: { message: 'You\'ve already favourited this Wod!' }, status: :forbidden
        else
          @current_user.favourited_wods << Wod.find(params[:favourite_id])
          render json: { message: 'Success' }
        end
      end

      def destroy
        favourite = @current_user.favourites.find_by(wod_id: params[:id])
        favourite&.delete
        render json: { message: 'Success' }
      end
    end
  end
end

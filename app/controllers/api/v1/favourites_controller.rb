module Api
  module V1
    class FavouritesController < ApplicationController

      def index
        favs = current_user.favourited_wods
        json_response(favs)
      end

      def create
        favourites = Favourite.create(user_id: @current_user.id, wod_id: params[:favourite][:wod_id])
        render json: { message: 'Success' }
      end

      def destroy
        favourite = Favourite.find_by(id: params[:id])
        render json: { message: 'Successfull Deleted' }
      end

      private

      def fav_params
        params.require(:wod_id).permit(:favourite)
      end

    end
  end
end

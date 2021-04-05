module Api
  module V1
    class FavouritesController < ApplicationController

      def index
        favs = current_user.favourited_wods
        json_response(favs)
      end

      def create
        favourites = Favourite.create(user_id: current_user.id, wod_id: params[:favourite][:wod_id])
        render json: { message: 'Success' }
      end

      def destroy
        favourite = current_user.favourites.find_by(wod_id: params[:id])
        favourite&.delete
        render json: { message: 'Successfull Deleted' }
      end

      private

      def fav_params
        params.require(:wod_id).permit(:favourite)
      end

    end
  end
end

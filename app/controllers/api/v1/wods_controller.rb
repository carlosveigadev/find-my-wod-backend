module Api
  module V1
    class WodsController < ApplicationController
      before_action :set_wod, only: %i[update show destroy]

      def index
        @wods = Wod.all
        json_response(@wods)
      end

      def show
        json_response(@wod)
      end

      def favourite
        if @current_user.favourites.exists?(wod_id: params[:wod_id])
          render json: { message: 'You\'ve already favourited this Wod!' }, status: :forbidden
        else
          @current_user.favourited_wods << Wod.find(params[:wod_id])
          render json: { message: 'Success' }
        end
      end

      def unfavourite
        favourite = @current_user.favourites.find_by(wod_id: params[:wod_id])
        favourite&.delete
        render json: { message: 'Success' }
      end

      private

      def set_wod
        @wod = Wod.find(params[:id])
      end
    end
  end
end

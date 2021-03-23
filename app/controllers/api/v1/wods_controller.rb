module Api
  module V1
    class WodsController < ApplicationController
      include CurrentUserConcern

      def index
        @wods = Wod.all
      end

      def show
        @wod = Wod.find(params[:id])
        render json: {}
      end
    end
  end
end

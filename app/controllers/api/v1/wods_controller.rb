module Api
  module V1
    class WodsController < ApplicationController
      include CurrentUserConcern

      def index
        @wods = Wod.all
        render json: WodsRepresenter.new(@wods).as_json
      end

      def show
        render json: WodRepresenter.new(@wod).as_json
      end

      private

      def set_wod
        @wod = Wod.find(params[:id])
      end
    end
  end
end

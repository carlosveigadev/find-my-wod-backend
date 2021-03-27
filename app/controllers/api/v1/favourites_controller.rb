module Api
  module V1
    class FavouritesController < ApplicationController
      def index
        @favs = @current_user.favourited_wods
        json_response(@favs)
      end
    end
  end
end

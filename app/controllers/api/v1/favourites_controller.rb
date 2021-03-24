module Api
  module V1
    class FavouritesController < ApplicationController
      def index
        @wods = @current_user.favourited_wods
      end
    end
  end
end

module Api
  module V1
    class WodsController < ApplicationController
      def index
        @wods = Wod.all
        json_response(@wods)
      end

      def show
        json_response(@wod)
      end
    end
  end
end

class AppearancesController < ApplicationController
before_action :set_appearance, only: [:show, :edit, :update, :destroy]
    def index
        @appearances = Appearance.all
      end

      def new
        @appearance = Appearance.new
      end

      def create
        @appearance = Appearance.new(appearance_params)
      end

    private

    # saves time
    def set_appearance
        @appearance = Appearance.find(params[:id])
    end
   
    # only allow the white list through.
    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

end

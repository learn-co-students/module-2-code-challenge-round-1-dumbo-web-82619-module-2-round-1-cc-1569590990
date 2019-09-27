class AppearancesController < ApplicationController

  
  
  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
  end

  def create
    # @appearance =Appearance.find

  @appearance = Appearance.create(params.require(:appearance).permit(:guest_id, :episode_id, :rating))

    # redirect_to episode_path(@episode)

    # annnd I'm out of timeeee!!
# couldn't get this redirect. I think because I didn't have the episode in the scope? but i thought it'd be ok because of ActiveRecord!
  end

  # def show
  # end
end

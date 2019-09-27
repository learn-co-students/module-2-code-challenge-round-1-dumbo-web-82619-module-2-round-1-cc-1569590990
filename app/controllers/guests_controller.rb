class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = find_me
  end

  def new
    @guest = Guest.new
  end

  def create
    # post
    @guest = Guest.create(permission)
    redirect_to guest_path(guest)

  end

  def edit
    @guest = find_me
    find_me.update(permission)
  end

  def update
    # post
    find_me.update(permission)
    redirect_to guest_path
  end

  def destroy
    guest = find_me
    Guest.delete(guest)
    redirect_to guests_path
  end



  private

  def find_me
    Guest.find(params[:id])
  end

  def permission
    params.require(:guest).permit(:name, :occupation)
  end

end

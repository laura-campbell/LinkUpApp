class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.create(guest_params)
    if @guest.valid?
      redirect_to @guest
    else
      flash[:errors] = @guest.errors.full_messages
      redirect_to new_guest_path
    end
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.update(guest_params)
  end

  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy
  end

  private

  def guest_params
    params.require(:guest).permit(:user_id, :link_up_id)
  end
end

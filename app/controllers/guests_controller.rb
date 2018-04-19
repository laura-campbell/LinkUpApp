class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.new
    @guest.user = User.find(params[:id])
    @guest.save
    @user_interests = UserInterest.all
  end

  def new
    @locations = Location.all
    @current_user = current_user
    @link_up = LinkUp.new
    @user = User.find(params[:id])
  end

  # def create
  #   byebug
  #   @guest = Guest.create(guest_params)
  #   if @guest.valid?
  #     redirect_to @link_up
  #   else
  #     flash[:errors] = @guest.errors.full_messages
  #     redirect_to new_guest_path
  #   end
  # end

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

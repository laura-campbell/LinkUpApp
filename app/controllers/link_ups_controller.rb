class LinkUpsController < ApplicationController
  def index
      @link_ups = LinkUp.all
    end

    def show
      @link_up = LinkUp.find(params[:id])
      @guests = Guest.all
      @host = User.find(session[:user_id])
    end

    def new
      @link_up = LinkUp.new
      @locations = Location.all
      @current_user = current_user
    end

    def create
      @link_up = LinkUp.create(link_up_params)
        @guest = Guest.create(user_id: params[:link_up][:guest_user_id], link_up_id: @link_up.id)
        @host = Host.create(user_id: params[:link_up][:host_user_id], link_up_id: @link_up.id)
        redirect_to @link_up
    end


    def edit
      @link_up = LinkUp.find(params[:id])
    end

    def update
      @link_up = LinkUp.update(link_up_params)
    end

    def destroy
      @link_up = LinkUp.find(params[:id])
      @link_up.destroy
    end

    private

    def link_up_params
      params.require(:link_up).permit(:name, :location_id, :description, :datetime)
    end
end

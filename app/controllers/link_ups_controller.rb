class LinkUpsController < ApplicationController
  def index
      @link_ups = LinkUp.all
    end

    def show
      @link_up = LinkUp.find(params[:id])
    end

    def new
      @link_up = LinkUp.new
      @locations = Location.all
    end

    def create
      @link_up = LinkUp.create(link_up_params)
      if @link_up.valid?
        redirect_to @link_up
      else
        flash[:errors] = @link_up.errors.full_messages
        redirect_to new_link_up_path
      end
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

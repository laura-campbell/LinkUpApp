class HostsController < ApplicationController
  def index
    @hosts = Host.all
  end

  def show
    @host = Host.find(params[:id])
  end

  def new
    @host = Host.new
  end

  def create
    @host = Host.create(host_params)
    @link_up = @host.linkup
    redirect_to @link_up
  end

  def edit
    @host = Host.find(params[:id])
  end

  def update
    @host = Host.update(host_params)
  end

  def destroy
    @host = Host.find(params[:id])
    @guest.destroy
  end

  private

  def host_params
    params.require(:host).permit(:user_id, :link_up_id)
  end
end

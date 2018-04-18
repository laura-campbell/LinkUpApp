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
    if @host.valid?
      redirect_to @host
    else
      flash[:errors] = @host.errors.full_messages
      redirect_to new_host_path
    end
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

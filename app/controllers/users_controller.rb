class UsersController < ApplicationController

    def index
      @current_user = User.find_by_id(session[:current_user_id])
      @users = User.all
    end

    def show
      @user = User.find(params[:id])
      @user_interests = UserInterest.all
      @link_ups = LinkUp.all
      @host = Host.find_by(user_id: params[:id])
      @guest = Guest.find_by(user_id: params[:id])
    end

    def new
      @user = User.new
      @interests = Interest.all
    end

    def create
      @user = User.create(user_params)
      if @user.valid?
        params[:user][:interest_ids].each do |i|
          @user_interest = UserInterest.create(user_id: @user.id, interest_id: i)
        end
        redirect_to login_path
      else
        redirect_to signup_path
      end
    end

    def edit
      @user = User.find(params[:id])
      @interests = Interest.all
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      redirect_to @user
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to signup_path
    end

  private

    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation, :first_name, :last_name, :email, :bio, :image_url, :interest_ids)
    end
  end

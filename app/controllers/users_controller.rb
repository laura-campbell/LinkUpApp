class UsersController < ApplicationController

    def index
      @users = User.all
    end

    def show
      @user = User.find(params[:id])
      @user_interests = UserInterest.all
    end

    def new
      @user = User.new
  
    end

    def create
      @user = User.create(user_params)
      if @user.valid?
        redirect_to @user
      else
        redirect_to signup_path
      end
    end

  private

    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation, :first_name, :last_name, :email, :bio, :image_url)
    end
  end

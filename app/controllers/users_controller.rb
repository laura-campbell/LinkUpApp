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
      @interest = Interest.new
      @interests = Interest.all
    end

    def create

      @user = User.create(user_params)
      if @user.valid?
        user_params[:i_ids].each do |i|
          @user_interest = UserInterest.create(user_id: @user.id, interest_id: i)
        end
      else
        redirect_to signup_path
      end
    end

    def create_user_interest
      @user_interest = UserInterest.create()
    end

  private

    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation, :first_name, :last_name, :email, :bio, :image_url, :i_ids)
    end
  end

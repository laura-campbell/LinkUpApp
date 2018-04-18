class UsersController < ApplicationController

    def show
      @user = User.find(params[:id])
    end

    def new
      @user = User.new
    end

    def create
      @user = User.create(user_params)
      if @user.valid?
        redirect_to @user
      else
        flash[:errors] = @user.errors.full_messages
        redirect_to new_user_path
      end
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.update(user_params)
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
    end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :email)
    end
  end

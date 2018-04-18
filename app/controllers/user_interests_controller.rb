class UserInterestsController < ApplicationController

  def index
    @user_interests = UserInterest.all
  end

  def show
    @user_interest = UserInterest.find(params[:id])
  end

  def new
    @user_interest = UserInterest.new
  end

  def create
    @user_interest = UserInterest.create(user_interest_params)
    if @user_interest.valid?
      redirect_to @user_interest
    else
      flash[:errors] = @user_interest.errors.full_messages
      redirect_to new_user_interest_path
    end
  end

  def edit
    @user_interest = UserInterest.find(params[:id])
  end

  def update
    @user_interest = UserInterest.update(user_interest_params)
  end

  def destroy
    @user_interest = UserInterest.find(params[:id])
    @user_interest.destroy
  end

  private

  def user_interest_params
    params.require(:user_interest).permit(:user_id, :interest_id)
  end

  end

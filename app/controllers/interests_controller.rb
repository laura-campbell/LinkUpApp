class InterestsController < ApplicationController
  def index
    @interests = Interest.all
  end

  def show
    @interest = Interest.find(params[:id])
    @user_interests = UserInterest.all
  end

  def new
    @interest = Interest.new
  end

  def create
    @interest = Interest.create(interest_params)
    if @interest.valid?
      redirect_to @interest
    else
      flash[:errors] = @interest.errors.full_messages
      redirect_to new_interest_path
    end
  end

  def edit
    @interest = Interest.find(params[:id])
  end

  def update
    @interest = Interest.update(interest_params)
  end

  def destroy
    @interest = Interest.find(params[:id])
    @interest.destroy
  end

  private

  def interest_params
    params.require(:interest).permit(:name)
  end

end

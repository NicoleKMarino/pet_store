class UsersController < ApplicationController

  def show
    @user= User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user= User.new(user_params)
    if @user.save
      redirect_to @user
    else
      flash[:error]= "Those are not valid inputs"
      render :new
    end
  end

  def update
  end


private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end

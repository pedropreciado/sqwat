class Api::UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find_by(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      render :show
    else
      render :json @user.errors.full_messages, status: 422
    end
  end

  def destroy
    @user.find_by(params[:id])
    @user.destroy!
  end

  def new
  end

  def edit
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end

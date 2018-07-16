class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = t ".welcome"
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find params[:id]
  rescue StandardError
    flash[:danger] = t ".cannot_find_user"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit :name, :email,
      :password, :password_confirmation
  end
end
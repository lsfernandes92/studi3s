class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'User create successfully!'
      login @user
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.includes(:events).find(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(:name, :email)
    end
end

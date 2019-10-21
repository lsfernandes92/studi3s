class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)

    if user
      flash[:success] = 'Login successfully!'
      login user
      redirect_to user
    else
      flash[:danger] = 'User not exists!'
      redirect_to root_url
    end
  end

  def destroy
    logout if logged_in?
    redirect_to root_url
  end
end

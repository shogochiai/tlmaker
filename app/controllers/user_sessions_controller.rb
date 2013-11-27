class UserSessionsController < ApplicationController
  before_filter :require_login, only: :destroy

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_to timelines_user_url(current_user), :notice => "login!"
    else
      flash.now[:alert] = "Login failed"
      render action: "new"
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice => "logout!"
  end
end

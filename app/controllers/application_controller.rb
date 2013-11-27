class ApplicationController < ActionController::Base
  before_filter :require_user, only: [:edit, :update, :destroy]
  protect_from_forgery

  private

  def require_user
    @user = User.find_by_id params[:id]
    redirect_to :back unless current_user == @user
  rescue ActionController::RedirectBackError
    redirect_to root_path
  end
end

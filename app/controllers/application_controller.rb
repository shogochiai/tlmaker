# coding: utf-8
class ApplicationController < ActionController::Base
  before_filter :require_user, only: [:edit, :update, :destroy]
  protect_from_forgery

  private

  def require_user
    @user_certification = User.find_by_id params[:user_id]  if params[:user_id].present?
    @user_certification = User.find_by_id params[:id] unless params[:user_id].present?
    redirect_to :back if current_user != @user_certification || @user_certification.nil?
  rescue ActionController::RedirectBackError
    redirect_to root_path
  end
end

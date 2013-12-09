# -*- coding: utf-8 -*-
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      login(params[:user][:email], params[:user][:password])
      redirect_to root_url, :notice => "Signed up!"
    else
      render :new
    end
  end

  def edit
    @user = User.find current_user.id
  end

  def update
    if current_user.update_attributes params[:user]
      redirect_to root_url, notice: 'ユーザー情報を更新しました'
    else
      render :edit
    end
  end
end

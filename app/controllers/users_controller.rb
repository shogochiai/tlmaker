class UsersController < ApplicationController
  def new  
    @user = User.new  
  end  

  def edit
    @user = User.find current_user.id
  end

    
  def create  
    @user = User.new(params[:user])  
    if @user.save  
      redirect_to root_url, :notice => "Signed up!"  
    else  
      render :new  
    end  
  end  

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end

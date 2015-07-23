class UsersController < ApplicationController
  def index
    @user_firm = UserFirm.find(params[:user_firm_id])
    @users     = @user_firm.users.all
  end
  
  def show
    @user_firm = UserFirm.find(params[:user_firm_id])
    @user      = @user_firm.users.find(params[:id])
  end
  
  def new
    @user_firm = UserFirm.find(params[:user_firm_id])
    @user      = @user_firm.users.build(user_params)
  end
  
  def create
    @user_firm = UserFirm.find(params[:user_firm_id])
    @user      = @user_firm.users.build(user_params)
    @user.save
  end
  
  private
  def user_params
    params.require(:user).permit(:name)
  end
end

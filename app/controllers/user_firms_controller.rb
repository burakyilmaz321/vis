class UserFirmsController < ApplicationController
  def show
    @user_firm = UserFirm.find(params[:id])
  end

  def new
    @user_firm = UserFirm.new(user_firm_params)
    user = @user_firm.users.build
  end

  def create
    @user_firm = UserFirm.new(user_firm_params)
    @user_firm.save
  end
  
  private
  def user_firm_params
    params.require(:user_firm).permit(:name, :city, 
                                      :user_attributes => [:name, :email])
  end
end

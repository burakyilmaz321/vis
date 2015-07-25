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
    if @user_firm.save
      flash[:success] = "Welcome"
      redirect_to @user_firm
    else
      render 'new'
    end
  end
  
  private
  def user_firm_params
    params.require(:user_firm).permit(:name, :city, 
                                      :users_attributes => [:name, :email, :password, 
                                                            :password_confirmation])
  end
end
